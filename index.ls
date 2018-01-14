/**
 * @package build-gc
 * @author  Nazar Mokrynskyi <nazar@mokrynskyi.com>
 * @license 0BSD
 */
compiler	= require('google-closure-compiler-js').gulp()
fs			= require('fs')
gulp		= require('gulp')

module.exports	= build

/**
 * @param {string}					source			Source file to minify
 * @param {string}					output			Where to output minified result
 * @param {(string|!Array<string>)}	externs			Closure Compiler externs
 * @param {!Object}					gulp_instance	Your gulp instance in case you want to integrate this with your own tasks
 */
!function build (source, output, externs = [], gulp_instance = gulp)
	if !Array.isArray(externs)
		externs	= [externs]
	output		= output.split('/')
	output_file	= output.pop()
	output_dir	= output.join('/')
	gulp_instance
		.task('minify', ->
			gulp.src(source)
				.pipe(compiler(
					compilationLevel	: 'ADVANCED'
					externs				: externs.map (file) ->
						{src	: fs.readFileSync(file).toString()}
					jsOutputFile		: output_file
					languageIn			: 'ES5'
					languageOut			: 'ES5'
					rewritePolyfills	: false
					warningLevel		: 'VERBOSE'
				))
				.pipe(gulp.dest(output_dir))
		)
