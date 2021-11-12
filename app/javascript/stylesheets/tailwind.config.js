const colors = require('tailwindcss/colors')

module.exports = {
  purge: [
    "./app/**/*.html.erb",
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      colors: {
        teal: colors.teal,
        amber: colors.amber,
        rose: colors.rose,
        indigo: colors.indigo,
        fuchsia: colors.fuchsia,
        blueGray: colors.blueGray,
      }
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
