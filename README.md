# C++ Spring 2026 Template

A minimal C++ project template with build and debugging support for GitHub CodeSpaces.

## Features

- ✅ Simple Hello World C++ program
- ✅ Makefile for easy building with g++
- ✅ Pre-configured for GitHub CodeSpaces
- ✅ Debug configuration with GDB
- ✅ VS Code integration

## Creating a Repository from This Template

### Option 1: Using GitHub Web Interface

1. Navigate to this template repository on GitHub
2. Click the **"Use this template"** button (green button near the top)
3. Enter your desired repository name
4. Choose public or private visibility
5. Click **"Create repository from template"**

### Option 2: Using GitHub CLI

```bash
gh repo create my-cpp-project --template tccmobile/CPPSpring26Template
```

## Building the Code

### In CodeSpace:

1. Open the repository in GitHub CodeSpace:
   - Go to your repository on GitHub
   - Click **"Code"** → **"Codespaces"** → **"Create codespace on main"**
   - Wait for the CodeSpace to initialize (30-60 seconds)

2. Build the project:
   ```bash
   make
   ```
   This compiles `src/hello.cpp` into `bin/hello`

3. Run the program:
   ```bash
   make run
   ```

### Locally (with g++ installed):

```bash
make
./bin/hello
```

## Debugging in CodeSpace

### Using VS Code Debugger

1. **Open the project** in CodeSpace (as described above)

2. **Navigate to the Run and Debug view:**
   - Click the Run icon in the left sidebar (play icon with bug)
   - Or press `Ctrl+Shift+D`

3. **Start debugging:**
   - Make sure **"Debug with GDB"** is selected in the dropdown at the top
   - Click the green play button or press `F5`
   - The program will compile and run under the debugger

4. **Use debugging features:**
   - **Set breakpoints:** Click on the line number in the editor to set a breakpoint
   - **Step through code:** Use the control buttons in the debug toolbar
   - **View variables:** Check the "Variables" panel on the left
   - **Open the Debug Console:** Press `Ctrl+`` to see output and debug messages

### Using Command Line GDB

```bash
# First build with debug symbols
make clean
g++ -g -std=c++11 -Wall -Wextra -o bin/hello src/hello.cpp

# Run with GDB
gdb ./bin/hello

# In GDB prompt:
# (gdb) break main        # Set breakpoint at main
# (gdb) run               # Run the program
# (gdb) next              # Step to next line
# (gdb) print variable    # Print variable value
# (gdb) continue          # Continue execution
# (gdb) quit              # Exit GDB
```

## Project Structure

```
CPPSpring26Template/
├── src/
│   └── hello.cpp          # Main C++ source file
├── bin/                   # Compiled executables (created by make)
├── .devcontainer/
│   └── devcontainer.json  # CodeSpace configuration
├── .vscode/
│   ├── launch.json        # Debug configuration
│   └── tasks.json         # Build tasks
├── .gitignore             # Git ignore file
├── Makefile               # Build configuration
└── README.md              # This file
```

## Makefile Commands

| Command | Description |
|---------|-------------|
| `make` or `make all` | Compile the source code |
| `make run` | Compile and run the program |
| `make clean` | Remove compiled binaries |

## Modifying the Template

### Adding New Source Files

1. Create your `.cpp` files in the `src/` directory
2. Update the `Makefile` to include them in the `SRC` variable:
   ```makefile
   SRC = src/hello.cpp src/myfile.cpp
   ```
3. Run `make` to rebuild

### Using Header Files

Create a `include/` directory and add header files:
```bash
mkdir -p include
```

Update the Makefile to include the header path:
```makefile
CXXFLAGS = -std=c++11 -Wall -Wextra -Iinclude
```

## Troubleshooting

**Issue:** "make: command not found"
- **Solution:** In CodeSpace, `make` should be pre-installed. If not, the container will install it automatically on first use.

**Issue:** "g++: command not found"
- **Solution:** The CodeSpace is configured to install build tools automatically. Give it a moment to initialize on first load.

**Issue:** Debugging doesn't work
- **Solution:** Make sure you've run `make` to build the executable first, then try debugging again.

**Issue:** Changes not reflected after editing code
- **Solution:** Run `make clean` followed by `make` to rebuild completely.

## Resources

- [C++ Reference](https://cppreference.com/)
- [GDB Debugger Documentation](https://sourceware.org/gdb/documentation/)
- [GitHub CodeSpaces Documentation](https://docs.github.com/en/codespaces)
- [VS Code C++ Tools](https://code.visualstudio.com/docs/languages/cpp)

## License

This template is provided as-is for educational purposes.