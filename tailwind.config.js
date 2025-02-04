/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './app/views/**/*.{html,html.erb,erb}',
    './app/frontend/**/*.{vue,js,ts,jsx,tsx}'
  ],
  theme: {
    extend: {},
  },
  plugins: [
    require('@tailwindcss/forms'),
  ],
}
