#!/bin/bash

# Colors for terminal output
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}Starting Vite + React project initialization...${NC}"

cp .example.env .env

# Git configuration
echo "Configure Git settings:"
read -p "Enter your Git name: " gitname
read -p "Enter your Git email: " gitemail

git config --global --add safe.directory $PWD
git config --global init.defaultBranch main
git config --global user.name "$gitname"
git config --global user.email "$gitemail"

read -p "Enter new Git remote URL (leave blank to unset from clone): " -r newRemote
if [ -z "$newRemote" ]; then
    git remote remove origin
else
    git remote set-url origin "$newRemote"
fi

# Check if project already exists
if [ ! -d "src" ]; then
    echo -e "${BLUE}Creating new Vite + React project...${NC}"
    
    # Initialize Vite project with React and TypeScript
    npm create vite@latest . -- --template react-ts
    
    # Install core dependencies
    echo -e "${BLUE}Installing core dependencies...${NC}"
    npm install react-router-dom@7 @tanstack/react-query formik yup @tailwindcss/forms
    
    # Install dev dependencies
    echo -e "${BLUE}Installing dev dependencies...${NC}"
    npm install -D tailwindcss postcss autoprefixer @types/node
    
    # Initialize Tailwind CSS
    echo -e "${BLUE}Setting up Tailwind CSS...${NC}"
    npx tailwindcss init -p

    # Update the vite.config.ts file
    echo -e "${BLUE}Updating vite.config.ts file...${NC}"
    conf="import { defineConfig } from 'vite';
    import react from '@vitejs/plugin-react';

    export default defineConfig({
    plugins: [react()],
    server: {
        host: '0.0.0.0',
        port: 5173,
        watch: {
        usePolling: true,
        },
    },
    });"
    echo "$conf" > vite.config.ts

fi

echo -e "${GREEN}🚀 Vite + React project initialization complete!${NC}"
echo -e "${BLUE}You can now run the project using:${NC}"
echo -e "${GREEN}npm run dev${NC}"