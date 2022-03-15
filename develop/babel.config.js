module.exports = {
  presets: ['@babel/preset-env'],
  plugins: [
    [
      '@babel/plugin-transform-runtime',
      {
        corejs: 3
      }
    ]
  ]
};



// .browserslistrc 看自己情况需要配置
// > 0.25%
// not dead
