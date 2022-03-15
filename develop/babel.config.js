module.exports = {
  presets: [
    [
      '@babel/preset-env',
      {
        useBuiltIns: 'usage',
        corejs: 3
      }
    ]
  ],
  plugins: [['@babel/plugin-transform-runtime']]
};

// .browserslistrc 看自己情况需要配置
// > 0.25%
// not dead
