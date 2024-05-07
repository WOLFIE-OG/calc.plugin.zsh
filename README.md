# Simple zsh calculator
> This is a calculator which runs on zsh.

### Installation

1. Clone this repository to your favorite path (e.g. `~/.oh-my-zsh/plugins/calc/calc.plugin.zsh`)
2. `source` the file in your `.zshrc`
3. Restart your `zsh`

```sh
# Your .zshrc
source $HOME/.oh-my-zsh/plugins/calc/calc.plugin.zsh
```

#### Via [antigen](http://antigen.sharats.me/)

Add to `.zshrc` 
```sh
antigen bundle arzzen/calc.plugin.zsh
```

#### Via [zplug](https://github.com/zplug/zplug)

Add to `.zshrc`
```sh
zplug "arzzen/calc.plugin.zsh"
```

### Usage
```bash
# addition
root@pc:~$ calc 5+3
8

# multiplication
root@pc:~$ calc '4*2'
8

# subtraction
root@pc:~$ calc -4-2
-6

# division
root@pc:~$ calc 5.0/2
2.5

# square root
root@pc:~$ calc sqrt(2)
1.41421

# parentheses
root@pc:~$ calc "(6+6)*6"
72

# convert from decimal to hexadecimal
root@pc:~$ calc "[#16] 255"
16#FF

# convert from decimal to binary
root@pc:~$ calc "[#2] 12"
2#1100

# convert from binary to decimal
root@pc:~$ calc "2#1100"
12

# convert from hexadecimal to decimal
root@pc:~$ calc "16#FF"
255

# arctangent
root@pc:~$ calc atan(1)
.785398

# PI value
root@pc:~$ calc PI
3.14159

# more complex
root@pc:~$ calc "3.4+7/8-(5.94*(4*atan(1)))"
-15.2611
```

### Alternative Implementations

```
# Put these in your .zshrc (No need to install a plugin)
cc() python3 -c "from math import *; print($*);"
alias cc='noglob cc'
# You can use `cc` just like `calc` from above. All functions from the math module of Python are available for use. 
```

### Plugin location

```bash
.oh-my-zsh
└─── plugins/
     └─── calc/
          └─── calc.plugin.zsh
```
