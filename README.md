# Random Number Generator App
## Introduction
- This app generates `size` numbers between `min` and `max`
- User could decide `size`, `min`, `max` values


## Normal Screens

### First Screen (initialize screen)

| ![](https://i.imgur.com/STC6X7q.png)|
| ----------------------------------- |

- The initial value of `max` is 50
- The initial value of `min` is 0
- The initial value of `size` is 5



### Second Screen (initial generate screen)

| ![](https://i.imgur.com/pdNv9W1.png)         |
| -------------------------------------------- |

- User could choose not to change any value
- After pressing 'Generate' button, user could get 5 random values between 0 to 50

### Third Screen (change generate screen)

| ![](https://i.imgur.com/iXUB0Xr.png)        |
| ------------------------------------------- |

- User could change `min`, `max`, `size` values
- After pressing 'Generate' button, user could get `size` random values between `min` to `max` 
- ***NOTED: `min` <= `size` < `max`***

## Error Detect Screens



### Char error screen

| ![](https://i.imgur.com/IpiDG5G.png)        |
| ------------------------------------------- |

- User could not input `char` or `string` in here !!!

### Range error screen

| ![](https://i.imgur.com/PdGpRex.png)        |
| ------------------------------------------- |

- User could not input `min` larger than `max` in here !!!


### Size error screen

| ![](https://i.imgur.com/pD2rolN.png)        |
| ------------------------------------------- |

- User could not input `size` larger than `max` - `min` in here !!!
