# IIC2613-Judge-RushHourExtreme


### Judging
Homework directories are expected to follow this structure

    path/to/homework/
    ├── informe.md
    ├── parte1.pl
    └── parte2.pl
    
#### Requirements
  * java
  * swi-prolog
  * _zsh_
  * _awk_  (Arch: core/gawk)
  * _basename_ (Arch: core/coreutils)
  * _timeout_ (Arch: core/coreutils)

#### Judging a single homework
```zsh
./grade path/to/homework
```

#### Judging multiple instances
```zsh
ls -d homeworks/*/ | parallel --tag './grade {}'
```
