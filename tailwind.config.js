/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./resources/**/*.blade.php",
    "./resources/**/*.js",
    "./resources/**/*.vue",
  ],
  theme: {
    extend: {},
    colors :{
      bg : '#17161b',
      accent : '#bfbee3',
      accent2 : '#9092da',
      text : '#f1f1f3',
      secondary : '#28272c',
      redCrim : '#dc143c',
      bgInput : '#28272c69'
    },
    screens: {
      sm: "480px",
      md: "768px",
      lg: "1024px",
      xl: "1280px",
  }
  },
  plugins: [],
}

