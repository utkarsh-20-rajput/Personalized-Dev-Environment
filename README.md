# Personalized Development Environment

This repository contains my personalized development environment setup using NeoVim. It includes a variety of features like linting, language servers, Git integration, AI integration, and more. The setup also integrates a terminal multiplexer to enhance the workflow for running, debugging, and testing your code with the speed and efficiency of Vim. The current setup supports HTML, CSS, JavaScript, Python, C++, and Lua.

## Features

- **Linting**: Real-time linting to help you catch errors and improve code quality.
- **Language Servers**: Integration with multiple language servers for enhanced code completion, navigation, and more.
- **Git Integration**: Seamless Git integration for version control within NeoVim.
- **AI Integration**: Leverages AI tools to assist in code completion and suggestions.
- **Terminal Multiplexer**: Run, debug, and test your code in a split terminal within NeoVim, ensuring a smooth development experience.

## Supported Languages

- HTML
- CSS
- JavaScript
- Python
- C++
- Lua

## Installation

To set up this environment, follow the steps below:

1. **Clone this repository**:
    ```sh
    git clone https://github.com/yourusername/your-repo.git ~/.config/nvim
    ```

2. **Install required plugins**:
    - Open NeoVim and run `:PackerInstall` to install the necessary plugins.
    
3. **Configure language servers**:
    - Ensure you have the required language servers installed. For example:
        ```sh
        npm install -g pyright # For Python
        npm install -g typescript-language-server # For JavaScript/TypeScript
        ```

4. **Install terminal multiplexer**:
    - Ensure you have `tmux` installed:
        ```sh
        sudo apt-get install tmux
        ```

## Usage

### Linting
Linting is automatically enabled for supported languages. Configuration can be adjusted in the `lspconfig` settings.

### Language Servers
Language servers provide enhanced code completion, navigation, and more. They are configured in the `lspconfig` section of the configuration files.

### Git Integration
Use `:G` commands to interact with Git directly from within NeoVim.

### AI Integration
AI features are powered by external tools and plugins. Configuration details can be found in the relevant plugin setup files.

### Terminal Multiplexer
Use the terminal multiplexer to run, debug, and test your code. Split terminal windows can be created and managed with `tmux`.

## Directory Structure

```plaintext
~/.config/nvim/
├── init.lua
├── lazy-lock.json
├── lua/
│   └── utkarsh/
│       └── lazy.lua
│       └── plugins/
│           └── nvim-cmp.lua
