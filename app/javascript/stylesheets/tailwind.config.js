const colors = require('tailwindcss/colors')
const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  purge: [
    "./app/**/*.html.erb",
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    screens: {
      'xs': '540px',
      ...defaultTheme.screens,
    },
    extend: {
      spacing: {
        '100': '25rem',
        '104': '26rem',
        '108': '27rem',
      },
      colors: {
        amber: colors.amber,
        blueGray: colors.blueGray,
        fuchsia: colors.fuchsia,
        indigo: colors.indigo,
        orange: colors.orange,
        rose: colors.rose,
        teal: colors.teal,
        wood: {
          50: '#f7eee9',
          100: '#efddd3',
          150: '#e7cdbd',
          200: '#dfbca7',
          250: '#d7ac91',
          300: '#cf9b7b',
          350: '#c78a65',
          400: '#bf7a4f',
          450: '#b76939',
          500: '#af5924',
          550: '#9d5020',
          600: '#8c471c',
          650: '#7a3e19',
          700: '#693515',
          750: '#572c12',
          800: '#46230e',
          850: '#341a0a',
          900: '#231107',
          950: '#110803',
        }
      }
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
