# Random Number Generator App
## Introduction
- This app generates `size` numbers between `min` and `max`
- User could decide `size`, `min`, `max` values
- [Here's the apk file](https://github.com/whiteSHADOW1234/RandomNumberGeneratorApp/blob/main/app-release.apk)

## App Icon
![](https://i.imgur.com/ODVFygk.png)


## Normal Screens

### First Screen (initialize screen)

| ![](https://i.imgur.com/zH0Pv2s.png)|
| ----------------------------------- |

- The initial value of `max` is 50
- The initial value of `min` is 0
- The initial value of `size` is 5



### Second Screen (initial generate screen)

| ![](https://i.imgur.com/BXJXGeh.png)         |
| -------------------------------------------- |

- User could choose not to change any value
- After pressing 'Generate' button, user could get 5 random values between 0 to 50

### Third Screen (change generate screen)

| ![](https://i.imgur.com/zpMdb5b.png)        |
| ------------------------------------------- |

- User could change `min`, `max`, `size` values
- After pressing 'Generate' button, user could get `size` random values between `min` to `max` 
- ***NOTED: `min` <= `size` < `max`***

## Error Detect Screens



### Char error screen

| ![](https://i.imgur.com/4G25R1N.png)        |
| ------------------------------------------- |

- User could not input `char` or `string` in here !!!

### Range error screen

| ![](https://i.imgur.com/mahHnZO.png)        |
| ------------------------------------------- |

- User could not input `min` larger than `max` in here !!!


### Size error screen

| ![](https://i.imgur.com/ymxSngc.png)        |
| ------------------------------------------- |

- User could not input `size` larger than `max` - `min` in here !!!
