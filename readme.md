# Build: Gulp+Closure Compiler
Opinionated Gulp task that minifies file with Google Closure Compiler.

Works with Gulp 4.

## How to install
```
npm install --save-dev build-gc
```

## How to use
```javascript
// gulpfile.js
// For default and only task:
require('build-gc').default(
    'src/index.js',     // Source file to minify
    'src/index.min.js', // Where to output minified result
    'src/externs.js'    // [optional] Closure Compiler externs
);
// Use it for specific task
const gulp     = require('gulp');
const build_gc = require('build-gc');
gulp.task('minify', build_gc.minify(
    'src/index.js',     // Source file to minify
    'src/index.min.js', // Where to output minified result
    'src/externs.js'    // [optional] Closure Compiler externs
))
```

## Contribution
Feel free to create issues and send pull requests (for big changes create an issue first and link it from the PR), they are highly appreciated!

## License
Free Public License 1.0.0 / Zero Clause BSD License

https://opensource.org/licenses/FPL-1.0.0

https://tldrlegal.com/license/bsd-0-clause-license
