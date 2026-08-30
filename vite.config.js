import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import tailwindcss from '@tailwindcss/vite'

// https://vite.dev/config/
export default defineConfig({
  plugins: [
    react(),
    tailwindcss(),
  ],
  server: {
    port: 5173,
    strictPort: false,
    host: true,
    cors: true,
    allowedHosts: true,
    headers: {
      'Access-Control-Allow-Origin': '*',
    },
    warmup: {
      clientFiles: ['./src/main.jsx', './src/App.jsx', './src/index.css'],
    },
  },
  preview: {
    port: 5173,
    strictPort: false,
    host: true,
    cors: true,
  },
})