# Build: Gulp+Closure Compiler
Opinionated Gulp task that minifies file with Google Closure Compiler

## How to install
```
npm install --save-dev build-gc
```

## How to use
```javascript
// gulpfile.js
require('build-gc')(
	'src/index.js',     // Source file to minify
	'src/index.min.js', // Where to output minified result
	'src/externs.js',   // [optional] Closure Compiler externs
	require('gulp')     // [optional] Your gulp instance in case you want to integrate this with your own tasks
)
```

This will provide following gulp task:
* minify

## Contribution
Feel free to create issues and send pull requests (for big changes create an issue first and link it from the PR), they are highly appreciated!

## License
Free Public License 1.0.0 / Zero Clause BSD License

https://opensource.org/licenses/FPL-1.0.0

https://tldrlegal.com/license/bsd-0-clause-license
