# Octoquery

A simple GitHub Repo Explorer built as a practice project to learn **TanStack Router** and **TanStack Query**.

Octoquery lets you search GitHub users and repositories, then view their details — all powered by the official GitHub API. Think of it as a lightweight, simplified version of Octokit, tailored just for learning and experimentation.

---

## Table of Contents

- [Octoquery](#octoquery)
  - [Table of Contents](#table-of-contents)
  - [Features](#features)
  - [Tech Stack](#tech-stack)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Development with Dev Containers](#development-with-dev-containers)
    - [What's included](#whats-included)
    - [How to use](#how-to-use)
  - [Usage](#usage)
  - [Project Structure](#project-structure)
  - [Notes](#notes)
  - [License](#license)

---

## Features

- Search GitHub users by username
- Search repositories using the `username/repo` format
- View detailed user information
- View detailed repository information

---

## Tech Stack

- **React** + **TypeScript**
- **TanStack Router** – for client-side routing
- **TanStack Query** – for data fetching and caching
- **Tailwind CSS** – for styling
- **Biome** – for linting and formatting
- **PNPM** – package manager
- **Vite** – build tool

---

## Prerequisites

- Node.js 20 or higher
- pnpm (`npm install -g pnpm`)

---

## Installation

1. Clone the repository:

```bash
git clone https://github.com/forgebyd/tanstack-octoquery.git
cd tanstack-octoquery
```

2. Install dependencies:

```bash
pnpm install
```

3. Start the development server:

```bash
pnpm dev
```

The app should now be running at `http://localhost:3000`.

---

## Development with Dev Containers

This project includes a ready-to-use Dev Container configuration. If you use VS Code or Cursor with the Dev Containers extension, you can skip most local setup.

### What's included

- Base image: `mcr.microsoft.com/devcontainers/typescript-node:4-24-trixie`
- Pre-installed VSCode extensions (Biome, Tailwind CSS IntelliSense, Pretty TypeScript Errors, etc.)
- Automatic post-create script
- pnpm configured via `PNPM_HOME`

### How to use

1. Make sure you have the **Dev Containers** extension installed.
2. Open the project folder in VS Code / Cursor.
3. When prompted, click **Reopen in Container** (or run the command `Dev Containers: Reopen in Container`).
4. Wait for the container to build and the `postCreateCommand` to finish.
5. Once ready, run:

```bash
pnpm dev
```

That’s it — you now have a consistent development environment without installing Node or tools on your local machine.

---

## Usage

1. Open the app in your browser (in this case, can be accessed at `http://localhost:3000`).
2. Use the search bar to look up a GitHub username or a repository in the format `username` or `username/repo`.
3. Click on a result to view detailed information about the user or repository.

The app fetches data live from the GitHub API. Note that unauthenticated requests are subject to GitHub’s rate limits.

---

## Project Structure

```
octoquery/
├── .devcontainer/          # DevContainer configuration
├── .github/                # GitHub configuration
├── .vscode/                # VSCode configuration
├── .husky/                 # Husky configuration
├── public/                 
├── src/
│   ├── app/                # Main app entry point directory
│   ├── entities/           # Entities list
│   ├── features/           # Features list
│   ├── routes/             # Routes list
│   ├── shared/             # Shared functionalities
│   │   ├── api/            # Shared api functionalities
│   │   ├── lib/            # Shared library functionalities
│   │   └── ui/             # Shared shadcn ui components
│   └── routeTree.gen.ts    # Generated route tree by TanStack
├── .commitlintrc.json      # Commitlint configuration
├── .czrc.json              # Commitizen configuration
├── .lintstagedrc.json      # Lint-staged configuration
├── biome.json              # Biome configuration
├── tsconfig.json           # TypeScript configuration
├── package.json
└── ...
```

---

## Notes

- This is a **learning/practice project**. It is not intended for production use.
- The app uses the public GitHub API without authentication, so you may hit rate limits during heavy testing.
- Some edge cases (private repos, deleted users, etc.) are not fully handled.

---

## License

This project is licensed under the **GNU General Public License v3.0**.  
See the [LICENSE.md](LICENSE.md) file for details.