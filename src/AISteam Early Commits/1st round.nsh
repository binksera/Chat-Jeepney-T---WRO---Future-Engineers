{
    "functionList": {
        "function_1": {
            "param_0": {
                "paramname": "OAMapClockwise",
                "type": 3
            }
        },
        "function_2": {
            "param_0": {
                "paramname": "OAMapCounterClockwise",
                "type": 3
            }
        },
        "function_3": {
            "param_0": {
                "paramname": "Clockwise",
                "type": 3
            }
        },
        "function_4": {
            "param_0": {
                "paramname": "CounterClockwise",
                "type": 3
            }
        }
    },
    "notes": {
        "note_0": {
            "text": "Middle",
            "x": "2391.33",
            "y": "1203.67"
        },
        "note_1": {
            "text": "Outer",
            "x": "2385.33",
            "y": "1387.33"
        },
        "note_10": {
            "text": "check if sensor is active\n\nif active\n- if sensor 1 triggered\n- activate sequence 1\n- set sensor not active\n\n- if sensor 2 triggered\n- activate sequence 2\n- set sensor not active",
            "x": "4758.33",
            "y": "453.333"
        },
        "note_11": {
            "text": "Initialize Variables",
            "x": "1076.34",
            "y": "2001"
        },
        "note_12": {
            "text": "Stop at FInish Line",
            "x": "643.333",
            "y": "1188.33"
        },
        "note_13": {
            "text": "Proximity from Center Reader",
            "x": "1398.33",
            "y": "726.667"
        },
        "note_14": {
            "text": " Left        Center     Right\n  155\t   95\t 35\n  125\t  95\t 65\n  135\t   95 \t 55",
            "x": "4333.33",
            "y": "683.333"
        },
        "note_15": {
            "text": "A = OA min\nB = OA max\na = new min\nb = new max",
            "x": "4086.67",
            "y": "238.333"
        },
        "note_2": {
            "text": "OA Auto Correct\nClockwise",
            "x": "701.667",
            "y": "615"
        },
        "note_3": {
            "text": "OA Auto Correct CounterClockwise",
            "x": "700",
            "y": "66.3333"
        },
        "note_4": {
            "text": "Circumference Codes\n\n1 = ICD\n2 = OCD",
            "x": "4088.67",
            "y": "377.667"
        },
        "note_5": {
            "text": "Sensor ports\n\nOA Right = A1\nOA Left = A2\nOA Rear = A3\nRGB = A4\nGrayscale - A5",
            "x": "4763.33",
            "y": "741.667"
        },
        "note_6": {
            "text": "When turns not = 12\nrepeat \nif corner detected\n- sequence\n- turn +1\n\nif distance > x\n- sequence to move closer\n\nif distance < x\n- sequence to move farther",
            "x": "4090.9",
            "y": "514.952"
        },
        "note_7": {
            "text": "Inner",
            "x": "2405",
            "y": "1044.34"
        },
        "note_8": {
            "text": "Identifier",
            "x": "2225.33",
            "y": "26.6667"
        },
        "note_9": {
            "text": "Looping Code",
            "x": "1613.33",
            "y": "71.6667"
        }
    },
    "top_0": {
        "item_0000000000": {
            "disabled": "0",
            "opcode": "",
            "x": "3280",
            "y": "2990"
        }
    },
    "top_1": {
        "item_0000000001": {
            "blocktype": 5,
            "opcode": "variable_distance",
            "varname": "distance",
            "x": "3585",
            "y": "3317"
        }
    },
    "top_10": {
        "item_0000000049": {
            "disabled": "0",
            "opcode": "function_3",
            "x": "5713",
            "y": "13"
        }
    },
    "top_11": {
        "item_0000000050": {
            "disabled": "0",
            "opcode": "function_2",
            "x": "6460",
            "y": "3"
        }
    },
    "top_12": {
        "item_0000000051": {
            "blocktype": 5,
            "opcode": "variable_oaval",
            "varname": "oaval",
            "x": "3991",
            "y": "79"
        }
    },
    "top_13": {
        "item_0000000052": {
            "blocktype": 5,
            "opcode": "variable_oavalcm",
            "varname": "oavalcm",
            "x": "3989",
            "y": "29"
        }
    },
    "top_14": {
        "item_0000000053": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "7"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "1"
            },
            "x": "1900",
            "y": "33"
        },
        "item_0000000073": {
            "disabled": "0",
            "opcode": "control_forever",
            "substack1": {
                "item_0000000072": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000055": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000054": {
                                    "blocktype": 5,
                                    "opcode": "variable_sensorstate",
                                    "varname": "sensorstate",
                                    "x": "1971",
                                    "y": "143"
                                },
                                "opcode": "variable_sensorstate",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "3"
                            },
                            "param_2": {
                                "opcode": "CGraphicsTextItem",
                                "position": "2",
                                "type": "10",
                                "value": "1"
                            },
                            "x": "1951",
                            "y": "138"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000063": {
                            "disabled": "0",
                            "opcode": "control_if",
                            "param_1": {
                                "item_0000000057": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000056": {
                                            "disabled": "0",
                                            "opcode": "sensing_gray",
                                            "param_0": {
                                                "position": "0",
                                                "type": "11",
                                                "value": "1"
                                            },
                                            "x": "1991",
                                            "y": "203"
                                        },
                                        "opcode": "sensing_gray",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "param_2": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "2",
                                        "type": "10",
                                        "value": "100"
                                    },
                                    "x": "1971",
                                    "y": "198"
                                },
                                "opcode": "operator_logic",
                                "position": "1",
                                "type": "12"
                            },
                            "substack1": {
                                "item_0000000058": {
                                    "disabled": "0",
                                    "opcode": "data_setvariableto",
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "7"
                                    },
                                    "param_3": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "3",
                                        "type": "10",
                                        "value": "0"
                                    },
                                    "x": "1960",
                                    "y": "253"
                                },
                                "item_0000000059": {
                                    "disabled": "0",
                                    "opcode": "function_3",
                                    "x": "1960",
                                    "y": "303"
                                },
                                "item_0000000060": {
                                    "disabled": "0",
                                    "opcode": "MakerLED_ALLColorLED",
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "4"
                                    },
                                    "param_3": {
                                        "position": "3",
                                        "type": "13",
                                        "value": "#3c00d2"
                                    },
                                    "x": "1960",
                                    "y": "353"
                                },
                                "item_0000000061": {
                                    "disabled": "0",
                                    "opcode": "control_wait",
                                    "param_1": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "1",
                                        "type": "10",
                                        "value": "0.2"
                                    },
                                    "x": "1960",
                                    "y": "403"
                                },
                                "item_0000000062": {
                                    "disabled": "0",
                                    "opcode": "MakerLED_CloseColorLED",
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "4"
                                    },
                                    "x": "1960",
                                    "y": "453"
                                },
                                "type": "15"
                            },
                            "x": "1940",
                            "y": "193"
                        },
                        "item_0000000068": {
                            "disabled": "0",
                            "opcode": "control_if",
                            "param_1": {
                                "item_0000000065": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000064": {
                                            "disabled": "0",
                                            "opcode": "sensing_gray",
                                            "param_0": {
                                                "position": "0",
                                                "type": "11",
                                                "value": "5"
                                            },
                                            "x": "1991",
                                            "y": "543"
                                        },
                                        "opcode": "sensing_gray",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "param_2": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "2",
                                        "type": "10",
                                        "value": "100"
                                    },
                                    "x": "1971",
                                    "y": "538"
                                },
                                "opcode": "operator_logic",
                                "position": "1",
                                "type": "12"
                            },
                            "substack1": {
                                "item_0000000066": {
                                    "disabled": "0",
                                    "opcode": "data_setvariableto",
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "7"
                                    },
                                    "param_3": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "3",
                                        "type": "10",
                                        "value": "0"
                                    },
                                    "x": "1960",
                                    "y": "593"
                                },
                                "item_0000000067": {
                                    "disabled": "0",
                                    "opcode": "function_4",
                                    "x": "1960",
                                    "y": "643"
                                },
                                "type": "15"
                            },
                            "x": "1940",
                            "y": "533"
                        },
                        "item_0000000069": {
                            "disabled": "0",
                            "opcode": "MakerLED_ALLColorLED",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "4"
                            },
                            "param_3": {
                                "position": "3",
                                "type": "13",
                                "value": "#ffff00"
                            },
                            "x": "1940",
                            "y": "723"
                        },
                        "item_0000000070": {
                            "disabled": "0",
                            "opcode": "control_wait",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "0.2"
                            },
                            "x": "1940",
                            "y": "773"
                        },
                        "item_0000000071": {
                            "disabled": "0",
                            "opcode": "MakerLED_CloseColorLED",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "4"
                            },
                            "x": "1940",
                            "y": "823"
                        },
                        "type": "15"
                    },
                    "x": "1920",
                    "y": "133"
                },
                "type": "15"
            },
            "x": "1900",
            "y": "83"
        }
    },
    "top_15": {
        "item_0000000081": {
            "disabled": "0",
            "opcode": "control_if",
            "param_1": {
                "item_0000000075": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000074": {
                            "disabled": "0",
                            "opcode": "MakerSensor_InfreadDistance",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "2"
                            },
                            "x": "128",
                            "y": "623"
                        },
                        "opcode": "MakerSensor_InfreadDistance",
                        "position": "0",
                        "type": "10"
                    },
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "2"
                    },
                    "param_2": {
                        "opcode": "CGraphicsTextItem",
                        "position": "2",
                        "type": "10",
                        "value": "45"
                    },
                    "x": "108",
                    "y": "618"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000076": {
                    "disabled": "0",
                    "opcode": "MakerSteerin_Analogy",
                    "param_1": {
                        "opcode": "CGraphicsTextItem",
                        "position": "1",
                        "type": "10",
                        "value": "120"
                    },
                    "x": "97",
                    "y": "673"
                },
                "item_0000000079": {
                    "disabled": "0",
                    "opcode": "control_waituntil",
                    "param_1": {
                        "item_0000000078": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000077": {
                                    "disabled": "0",
                                    "opcode": "MakerSensor_InfreadDistance",
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "2"
                                    },
                                    "x": "211",
                                    "y": "733"
                                },
                                "opcode": "MakerSensor_InfreadDistance",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "1"
                            },
                            "param_2": {
                                "opcode": "CGraphicsTextItem",
                                "position": "2",
                                "type": "10",
                                "value": "50"
                            },
                            "x": "191",
                            "y": "728"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "x": "97",
                    "y": "723"
                },
                "item_0000000080": {
                    "disabled": "0",
                    "opcode": "MakerSteerin_Analogy",
                    "param_1": {
                        "opcode": "CGraphicsTextItem",
                        "position": "1",
                        "type": "10",
                        "value": "95"
                    },
                    "x": "97",
                    "y": "783"
                },
                "type": "15"
            },
            "x": "77",
            "y": "613"
        },
        "item_0000000089": {
            "disabled": "0",
            "opcode": "control_if",
            "param_1": {
                "item_0000000083": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000082": {
                            "disabled": "0",
                            "opcode": "MakerSensor_InfreadDistance",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "2"
                            },
                            "x": "128",
                            "y": "873"
                        },
                        "opcode": "MakerSensor_InfreadDistance",
                        "position": "0",
                        "type": "10"
                    },
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "1"
                    },
                    "param_2": {
                        "opcode": "CGraphicsTextItem",
                        "position": "2",
                        "type": "10",
                        "value": "60"
                    },
                    "x": "108",
                    "y": "868"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000084": {
                    "disabled": "0",
                    "opcode": "MakerSteerin_Analogy",
                    "param_1": {
                        "opcode": "CGraphicsTextItem",
                        "position": "1",
                        "type": "10",
                        "value": "80"
                    },
                    "x": "97",
                    "y": "923"
                },
                "item_0000000087": {
                    "disabled": "0",
                    "opcode": "control_waituntil",
                    "param_1": {
                        "item_0000000086": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000085": {
                                    "disabled": "0",
                                    "opcode": "MakerSensor_InfreadDistance",
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "2"
                                    },
                                    "x": "211",
                                    "y": "983"
                                },
                                "opcode": "MakerSensor_InfreadDistance",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "2"
                            },
                            "param_2": {
                                "opcode": "CGraphicsTextItem",
                                "position": "2",
                                "type": "10",
                                "value": "55"
                            },
                            "x": "191",
                            "y": "978"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "x": "97",
                    "y": "973"
                },
                "item_0000000088": {
                    "disabled": "0",
                    "opcode": "MakerSteerin_Analogy",
                    "param_1": {
                        "opcode": "CGraphicsTextItem",
                        "position": "1",
                        "type": "10",
                        "value": "95"
                    },
                    "x": "97",
                    "y": "1033"
                },
                "type": "15"
            },
            "x": "77",
            "y": "863"
        }
    },
    "top_16": {
        "item_0000000097": {
            "disabled": "0",
            "opcode": "control_if",
            "param_1": {
                "item_0000000091": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000090": {
                            "disabled": "0",
                            "opcode": "MakerSensor_InfreadDistance",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "1"
                            },
                            "x": "126",
                            "y": "75"
                        },
                        "opcode": "MakerSensor_InfreadDistance",
                        "position": "0",
                        "type": "10"
                    },
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "2"
                    },
                    "param_2": {
                        "opcode": "CGraphicsTextItem",
                        "position": "2",
                        "type": "10",
                        "value": "45"
                    },
                    "x": "106",
                    "y": "70"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000092": {
                    "disabled": "0",
                    "opcode": "MakerSteerin_Analogy",
                    "param_1": {
                        "opcode": "CGraphicsTextItem",
                        "position": "1",
                        "type": "10",
                        "value": "80"
                    },
                    "x": "95",
                    "y": "125"
                },
                "item_0000000095": {
                    "disabled": "0",
                    "opcode": "control_waituntil",
                    "param_1": {
                        "item_0000000094": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000093": {
                                    "disabled": "0",
                                    "opcode": "MakerSensor_InfreadDistance",
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "x": "209",
                                    "y": "185"
                                },
                                "opcode": "MakerSensor_InfreadDistance",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "1"
                            },
                            "param_2": {
                                "opcode": "CGraphicsTextItem",
                                "position": "2",
                                "type": "10",
                                "value": "50"
                            },
                            "x": "189",
                            "y": "180"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "x": "95",
                    "y": "175"
                },
                "item_0000000096": {
                    "disabled": "0",
                    "opcode": "MakerSteerin_Analogy",
                    "param_1": {
                        "opcode": "CGraphicsTextItem",
                        "position": "1",
                        "type": "10",
                        "value": "95"
                    },
                    "x": "95",
                    "y": "235"
                },
                "type": "15"
            },
            "x": "75",
            "y": "65"
        },
        "item_0000000105": {
            "disabled": "0",
            "opcode": "control_if",
            "param_1": {
                "item_0000000099": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000098": {
                            "disabled": "0",
                            "opcode": "MakerSensor_InfreadDistance",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "1"
                            },
                            "x": "126",
                            "y": "325"
                        },
                        "opcode": "MakerSensor_InfreadDistance",
                        "position": "0",
                        "type": "10"
                    },
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "1"
                    },
                    "param_2": {
                        "opcode": "CGraphicsTextItem",
                        "position": "2",
                        "type": "10",
                        "value": "60"
                    },
                    "x": "106",
                    "y": "320"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000100": {
                    "disabled": "0",
                    "opcode": "MakerSteerin_Analogy",
                    "param_1": {
                        "opcode": "CGraphicsTextItem",
                        "position": "1",
                        "type": "10",
                        "value": "120"
                    },
                    "x": "95",
                    "y": "375"
                },
                "item_0000000103": {
                    "disabled": "0",
                    "opcode": "control_waituntil",
                    "param_1": {
                        "item_0000000102": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000101": {
                                    "disabled": "0",
                                    "opcode": "MakerSensor_InfreadDistance",
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "x": "209",
                                    "y": "435"
                                },
                                "opcode": "MakerSensor_InfreadDistance",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "2"
                            },
                            "param_2": {
                                "opcode": "CGraphicsTextItem",
                                "position": "2",
                                "type": "10",
                                "value": "55"
                            },
                            "x": "189",
                            "y": "430"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "x": "95",
                    "y": "425"
                },
                "item_0000000104": {
                    "disabled": "0",
                    "opcode": "MakerSteerin_Analogy",
                    "param_1": {
                        "opcode": "CGraphicsTextItem",
                        "position": "1",
                        "type": "10",
                        "value": "95"
                    },
                    "x": "95",
                    "y": "485"
                },
                "type": "15"
            },
            "x": "75",
            "y": "315"
        }
    },
    "top_17": {
        "item_0000000108": {
            "disabled": "0",
            "opcode": "operator_and",
            "param_0": {
                "item_0000000106": {
                    "disabled": "0",
                    "opcode": "empty",
                    "x": "4344",
                    "y": "142"
                },
                "opcode": "empty",
                "position": "0",
                "type": "12"
            },
            "param_2": {
                "item_0000000107": {
                    "disabled": "0",
                    "opcode": "empty",
                    "x": "4453",
                    "y": "142"
                },
                "opcode": "empty",
                "position": "2",
                "type": "12"
            },
            "x": "4334",
            "y": "137"
        }
    },
    "top_18": {
        "item_0000000110": {
            "disabled": "0",
            "opcode": "control_if",
            "param_1": {
                "item_0000000109": {
                    "disabled": "0",
                    "opcode": "empty",
                    "x": "4575",
                    "y": "40"
                },
                "opcode": "empty",
                "position": "1",
                "type": "12"
            },
            "x": "4544",
            "y": "30"
        }
    },
    "top_19": {
        "item_0000000111": {
            "blocktype": 5,
            "opcode": "variable_a",
            "varname": "a",
            "x": "4207",
            "y": "22"
        }
    },
    "top_2": {
        "item_0000000002": {
            "disabled": "0",
            "opcode": "data_changevariableby",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "1"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": ""
            },
            "x": "3553",
            "y": "3055"
        }
    },
    "top_20": {
        "item_0000000113": {
            "disabled": "0",
            "opcode": "control_ifelse",
            "param_1": {
                "item_0000000112": {
                    "disabled": "0",
                    "opcode": "empty",
                    "x": "4577",
                    "y": "182"
                },
                "opcode": "empty",
                "position": "1",
                "type": "12"
            },
            "x": "4546",
            "y": "172"
        }
    },
    "top_21": {
        "item_0000000114": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "7"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "1"
            },
            "x": "805",
            "y": "1910"
        },
        "item_0000000115": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "7"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "1"
            },
            "x": "805",
            "y": "1960"
        },
        "item_0000000134": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000117": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000116": {
                            "blocktype": 5,
                            "opcode": "variable_sensorstate",
                            "varname": "sensorstate",
                            "x": "890",
                            "y": "2020"
                        },
                        "opcode": "variable_sensorstate",
                        "position": "0",
                        "type": "10"
                    },
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "3"
                    },
                    "param_2": {
                        "opcode": "CGraphicsTextItem",
                        "position": "2",
                        "type": "10",
                        "value": "1"
                    },
                    "x": "870",
                    "y": "2015"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000125": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000119": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000118": {
                                    "disabled": "0",
                                    "opcode": "sensing_gray",
                                    "param_0": {
                                        "position": "0",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "x": "876",
                                    "y": "2080"
                                },
                                "opcode": "sensing_gray",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "1"
                            },
                            "param_2": {
                                "opcode": "CGraphicsTextItem",
                                "position": "2",
                                "type": "10",
                                "value": "100"
                            },
                            "x": "856",
                            "y": "2075"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000120": {
                            "disabled": "0",
                            "opcode": "data_setvariableto",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "7"
                            },
                            "param_3": {
                                "opcode": "CGraphicsTextItem",
                                "position": "3",
                                "type": "10",
                                "value": "0"
                            },
                            "x": "845",
                            "y": "2130"
                        },
                        "item_0000000121": {
                            "disabled": "0",
                            "opcode": "function_3",
                            "x": "845",
                            "y": "2180"
                        },
                        "item_0000000122": {
                            "disabled": "0",
                            "opcode": "MakerLED_ALLColorLED",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "4"
                            },
                            "param_3": {
                                "position": "3",
                                "type": "13",
                                "value": "#00aaaa"
                            },
                            "x": "845",
                            "y": "2230"
                        },
                        "item_0000000123": {
                            "disabled": "0",
                            "opcode": "control_wait",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "0.2"
                            },
                            "x": "845",
                            "y": "2280"
                        },
                        "item_0000000124": {
                            "disabled": "0",
                            "opcode": "MakerLED_CloseColorLED",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "4"
                            },
                            "x": "845",
                            "y": "2330"
                        },
                        "type": "15"
                    },
                    "x": "825",
                    "y": "2070"
                },
                "item_0000000130": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000127": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000126": {
                                    "disabled": "0",
                                    "opcode": "sensing_gray",
                                    "param_0": {
                                        "position": "0",
                                        "type": "11",
                                        "value": "5"
                                    },
                                    "x": "876",
                                    "y": "2420"
                                },
                                "opcode": "sensing_gray",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "1"
                            },
                            "param_2": {
                                "opcode": "CGraphicsTextItem",
                                "position": "2",
                                "type": "10",
                                "value": "100"
                            },
                            "x": "856",
                            "y": "2415"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000128": {
                            "disabled": "0",
                            "opcode": "data_setvariableto",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "7"
                            },
                            "param_3": {
                                "opcode": "CGraphicsTextItem",
                                "position": "3",
                                "type": "10",
                                "value": "0"
                            },
                            "x": "845",
                            "y": "2470"
                        },
                        "item_0000000129": {
                            "disabled": "0",
                            "opcode": "function_4",
                            "x": "845",
                            "y": "2520"
                        },
                        "type": "15"
                    },
                    "x": "825",
                    "y": "2410"
                },
                "item_0000000131": {
                    "disabled": "0",
                    "opcode": "MakerLED_ALLColorLED",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "4"
                    },
                    "param_3": {
                        "position": "3",
                        "type": "13",
                        "value": "#ffd200"
                    },
                    "x": "825",
                    "y": "2600"
                },
                "item_0000000132": {
                    "disabled": "0",
                    "opcode": "control_wait",
                    "param_1": {
                        "opcode": "CGraphicsTextItem",
                        "position": "1",
                        "type": "10",
                        "value": "0.2"
                    },
                    "x": "825",
                    "y": "2650"
                },
                "item_0000000133": {
                    "disabled": "0",
                    "opcode": "MakerLED_CloseColorLED",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "4"
                    },
                    "x": "825",
                    "y": "2700"
                },
                "type": "15"
            },
            "x": "805",
            "y": "2010"
        },
        "item_0000000135": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "8"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "0"
            },
            "x": "805",
            "y": "2780"
        },
        "item_0000000136": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "9"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "0"
            },
            "x": "805",
            "y": "2830"
        },
        "item_0000000137": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "10"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "0"
            },
            "x": "805",
            "y": "2880"
        },
        "item_0000000138": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "11"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "0"
            },
            "x": "805",
            "y": "2930"
        },
        "item_0000000139": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "12"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "0"
            },
            "x": "805",
            "y": "2980"
        },
        "item_0000000140": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "13"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "0"
            },
            "x": "805",
            "y": "3030"
        },
        "item_0000000141": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "14"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "0"
            },
            "x": "805",
            "y": "3080"
        },
        "item_0000000142": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "15"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "0"
            },
            "x": "805",
            "y": "3130"
        },
        "item_0000000143": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "16"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "0"
            },
            "x": "805",
            "y": "3180"
        }
    },
    "top_22": {
        "item_0000000144": {
            "blocktype": 5,
            "opcode": "variable_sensorstate",
            "varname": "sensorstate",
            "x": "3940",
            "y": "180"
        }
    },
    "top_23": {
        "item_0000000146": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000145": {
                    "disabled": "0",
                    "opcode": "empty",
                    "x": "4395",
                    "y": "255"
                },
                "opcode": "empty",
                "position": "1",
                "type": "12"
            },
            "x": "4330",
            "y": "245"
        }
    },
    "top_24": {
        "item_0000000147": {
            "disabled": "0",
            "opcode": "MakerMotion_OpenLoop",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "1"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "50"
            },
            "x": "4355",
            "y": "443"
        }
    },
    "top_25": {
        "item_0000000148": {
            "blocktype": 5,
            "opcode": "variable_OAProxyRight",
            "varname": "OAProxyRight",
            "x": "3812",
            "y": "208"
        }
    },
    "top_26": {
        "item_0000000149": {
            "disabled": "0",
            "opcode": "motion_encoded_time",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "1"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "50"
            },
            "param_5": {
                "opcode": "CGraphicsTextItem",
                "position": "5",
                "type": "10",
                "value": "1"
            },
            "x": "4332",
            "y": "523"
        }
    },
    "top_27": {
        "item_0000000150": {
            "blocktype": 6,
            "disabled": "0",
            "function_1": {
                "param_0": {
                    "paramname": "OAMapClockwise",
                    "type": 3
                }
            },
            "opcode": "function_1",
            "param_0": {
                "opcode": "CGraphicsTextItem",
                "position": "0",
                "type": "9",
                "value": "OAMapClockwise"
            },
            "x": "6197",
            "y": "77"
        },
        "item_0000000151": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "1"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "5"
            },
            "x": "6197",
            "y": "137"
        },
        "item_0000000152": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "2"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "60"
            },
            "x": "6197",
            "y": "187"
        },
        "item_0000000153": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "3"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "3"
            },
            "x": "6197",
            "y": "237"
        },
        "item_0000000154": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "4"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "15"
            },
            "x": "6197",
            "y": "287"
        },
        "item_0000000155": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "5"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "0"
            },
            "x": "6197",
            "y": "337"
        },
        "item_0000000156": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "6"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "0"
            },
            "x": "6197",
            "y": "387"
        },
        "item_0000000175": {
            "disabled": "0",
            "opcode": "control_forever",
            "substack1": {
                "item_0000000158": {
                    "disabled": "0",
                    "opcode": "data_setvariableto",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "5"
                    },
                    "param_3": {
                        "item_0000000157": {
                            "disabled": "0",
                            "opcode": "MakerSensor_InfreadDistance",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "1"
                            },
                            "x": "6421",
                            "y": "492"
                        },
                        "opcode": "MakerSensor_InfreadDistance",
                        "position": "3",
                        "type": "10"
                    },
                    "x": "6217",
                    "y": "487"
                },
                "item_0000000166": {
                    "disabled": "0",
                    "opcode": "data_setvariableto",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "5"
                    },
                    "param_3": {
                        "item_0000000165": {
                            "disabled": "0",
                            "opcode": "operator_math",
                            "param_0": {
                                "item_0000000161": {
                                    "disabled": "0",
                                    "opcode": "operator_math",
                                    "param_0": {
                                        "item_0000000159": {
                                            "blocktype": 5,
                                            "opcode": "variable_oaval",
                                            "varname": "oaval",
                                            "x": "6451",
                                            "y": "552"
                                        },
                                        "opcode": "variable_oaval",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "2"
                                    },
                                    "param_2": {
                                        "item_0000000160": {
                                            "blocktype": 5,
                                            "opcode": "variable_A",
                                            "varname": "A",
                                            "x": "6576",
                                            "y": "552"
                                        },
                                        "opcode": "variable_A",
                                        "position": "2",
                                        "type": "10"
                                    },
                                    "x": "6436",
                                    "y": "547"
                                },
                                "opcode": "operator_math",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "1"
                            },
                            "param_2": {
                                "item_0000000164": {
                                    "disabled": "0",
                                    "opcode": "operator_math",
                                    "param_0": {
                                        "item_0000000162": {
                                            "blocktype": 5,
                                            "opcode": "variable_b",
                                            "varname": "b",
                                            "x": "6715",
                                            "y": "552"
                                        },
                                        "opcode": "variable_b",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "2"
                                    },
                                    "param_2": {
                                        "item_0000000163": {
                                            "blocktype": 5,
                                            "opcode": "variable_a",
                                            "varname": "a",
                                            "x": "6821",
                                            "y": "552"
                                        },
                                        "opcode": "variable_a",
                                        "position": "2",
                                        "type": "10"
                                    },
                                    "x": "6700",
                                    "y": "547"
                                },
                                "opcode": "operator_math",
                                "position": "2",
                                "type": "10"
                            },
                            "x": "6421",
                            "y": "542"
                        },
                        "opcode": "operator_math",
                        "position": "3",
                        "type": "10"
                    },
                    "x": "6217",
                    "y": "537"
                },
                "item_0000000174": {
                    "disabled": "0",
                    "opcode": "data_setvariableto",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "6"
                    },
                    "param_3": {
                        "item_0000000173": {
                            "disabled": "0",
                            "opcode": "operator_math",
                            "param_0": {
                                "item_0000000171": {
                                    "disabled": "0",
                                    "opcode": "operator_math",
                                    "param_0": {
                                        "item_0000000167": {
                                            "blocktype": 5,
                                            "opcode": "variable_oaval",
                                            "varname": "oaval",
                                            "x": "6474",
                                            "y": "627"
                                        },
                                        "opcode": "variable_oaval",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "4"
                                    },
                                    "param_2": {
                                        "item_0000000170": {
                                            "disabled": "0",
                                            "opcode": "operator_math",
                                            "param_0": {
                                                "item_0000000168": {
                                                    "blocktype": 5,
                                                    "opcode": "variable_b",
                                                    "varname": "b",
                                                    "x": "6615",
                                                    "y": "627"
                                                },
                                                "opcode": "variable_b",
                                                "position": "0",
                                                "type": "10"
                                            },
                                            "param_1": {
                                                "position": "1",
                                                "type": "11",
                                                "value": "2"
                                            },
                                            "param_2": {
                                                "item_0000000169": {
                                                    "blocktype": 5,
                                                    "opcode": "variable_A",
                                                    "varname": "A",
                                                    "x": "6721",
                                                    "y": "627"
                                                },
                                                "opcode": "variable_A",
                                                "position": "2",
                                                "type": "10"
                                            },
                                            "x": "6600",
                                            "y": "622"
                                        },
                                        "opcode": "operator_math",
                                        "position": "2",
                                        "type": "10"
                                    },
                                    "x": "6459",
                                    "y": "617"
                                },
                                "opcode": "operator_math",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "1"
                            },
                            "param_2": {
                                "item_0000000172": {
                                    "blocktype": 5,
                                    "opcode": "variable_a",
                                    "varname": "a",
                                    "x": "6860",
                                    "y": "627"
                                },
                                "opcode": "variable_a",
                                "position": "2",
                                "type": "10"
                            },
                            "x": "6444",
                            "y": "612"
                        },
                        "opcode": "operator_math",
                        "position": "3",
                        "type": "10"
                    },
                    "x": "6217",
                    "y": "607"
                },
                "type": "15"
            },
            "x": "6197",
            "y": "437"
        }
    },
    "top_28": {
        "item_0000000176": {
            "blocktype": 5,
            "opcode": "variable_IC",
            "varname": "IC",
            "x": "3933",
            "y": "33"
        }
    },
    "top_29": {
        "item_0000000187": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000178": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000177": {
                            "blocktype": 5,
                            "opcode": "variable_turns",
                            "varname": "turns",
                            "x": "2339",
                            "y": "1977"
                        },
                        "opcode": "variable_turns",
                        "position": "0",
                        "type": "10"
                    },
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "3"
                    },
                    "param_2": {
                        "opcode": "CGraphicsTextItem",
                        "position": "2",
                        "type": "10",
                        "value": "12"
                    },
                    "x": "2319",
                    "y": "1972"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000186": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000180": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000179": {
                                    "disabled": "0",
                                    "opcode": "sensing_gray",
                                    "param_0": {
                                        "position": "0",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "x": "2325",
                                    "y": "2037"
                                },
                                "opcode": "sensing_gray",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "1"
                            },
                            "param_2": {
                                "opcode": "CGraphicsTextItem",
                                "position": "2",
                                "type": "10",
                                "value": "70"
                            },
                            "x": "2305",
                            "y": "2032"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000181": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "135"
                            },
                            "x": "2294",
                            "y": "2087"
                        },
                        "item_0000000184": {
                            "disabled": "0",
                            "opcode": "control_waituntil",
                            "param_1": {
                                "item_0000000183": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000182": {
                                            "disabled": "0",
                                            "opcode": "sensing_gray",
                                            "param_0": {
                                                "position": "0",
                                                "type": "11",
                                                "value": "5"
                                            },
                                            "x": "2408",
                                            "y": "2147"
                                        },
                                        "opcode": "sensing_gray",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "param_2": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "2",
                                        "type": "10",
                                        "value": "70"
                                    },
                                    "x": "2388",
                                    "y": "2142"
                                },
                                "opcode": "operator_logic",
                                "position": "1",
                                "type": "12"
                            },
                            "x": "2294",
                            "y": "2137"
                        },
                        "item_0000000185": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "95"
                            },
                            "x": "2294",
                            "y": "2197"
                        },
                        "type": "15"
                    },
                    "x": "2274",
                    "y": "2027"
                },
                "type": "15"
            },
            "x": "2254",
            "y": "1967"
        }
    },
    "top_3": {
        "item_0000000004": {
            "disabled": "0",
            "opcode": "control_waituntil",
            "param_1": {
                "item_0000000003": {
                    "disabled": "0",
                    "opcode": "empty",
                    "x": "3691",
                    "y": "3181"
                },
                "opcode": "empty",
                "position": "1",
                "type": "12"
            },
            "x": "3597",
            "y": "3171"
        }
    },
    "top_30": {
        "item_0000000190": {
            "disabled": "0",
            "opcode": "operator_or",
            "param_0": {
                "item_0000000188": {
                    "disabled": "0",
                    "opcode": "empty",
                    "x": "4347",
                    "y": "197"
                },
                "opcode": "empty",
                "position": "0",
                "type": "12"
            },
            "param_2": {
                "item_0000000189": {
                    "disabled": "0",
                    "opcode": "empty",
                    "x": "4443",
                    "y": "197"
                },
                "opcode": "empty",
                "position": "2",
                "type": "12"
            },
            "x": "4337",
            "y": "192"
        }
    },
    "top_31": {
        "item_0000000191": {
            "disabled": "0",
            "opcode": "operator_logic",
            "param_0": {
                "opcode": "CGraphicsTextItem",
                "position": "0",
                "type": "10",
                "value": ""
            },
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "3"
            },
            "param_2": {
                "opcode": "CGraphicsTextItem",
                "position": "2",
                "type": "10",
                "value": ""
            },
            "x": "4330",
            "y": "81"
        }
    },
    "top_32": {
        "item_0000000192": {
            "disabled": "0",
            "opcode": "control_forever",
            "x": "4727",
            "y": "28"
        }
    },
    "top_33": {
        "item_0000000194": {
            "disabled": "0",
            "opcode": "control_waituntil",
            "param_1": {
                "item_0000000193": {
                    "disabled": "0",
                    "opcode": "empty",
                    "x": "4791",
                    "y": "174"
                },
                "opcode": "empty",
                "position": "1",
                "type": "12"
            },
            "x": "4697",
            "y": "164"
        }
    },
    "top_34": {
        "item_0000000205": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000196": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000195": {
                            "blocktype": 5,
                            "opcode": "variable_turns",
                            "varname": "turns",
                            "x": "159",
                            "y": "1216"
                        },
                        "opcode": "variable_turns",
                        "position": "0",
                        "type": "10"
                    },
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "3"
                    },
                    "param_2": {
                        "opcode": "CGraphicsTextItem",
                        "position": "2",
                        "type": "10",
                        "value": "12"
                    },
                    "x": "139",
                    "y": "1211"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000204": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000198": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000197": {
                                    "disabled": "0",
                                    "opcode": "sensing_gray",
                                    "param_0": {
                                        "position": "0",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "x": "145",
                                    "y": "1276"
                                },
                                "opcode": "sensing_gray",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "1"
                            },
                            "param_2": {
                                "opcode": "CGraphicsTextItem",
                                "position": "2",
                                "type": "10",
                                "value": "70"
                            },
                            "x": "125",
                            "y": "1271"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000199": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "135"
                            },
                            "x": "114",
                            "y": "1326"
                        },
                        "item_0000000202": {
                            "disabled": "0",
                            "opcode": "control_waituntil",
                            "param_1": {
                                "item_0000000201": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000200": {
                                            "disabled": "0",
                                            "opcode": "sensing_gray",
                                            "param_0": {
                                                "position": "0",
                                                "type": "11",
                                                "value": "5"
                                            },
                                            "x": "228",
                                            "y": "1386"
                                        },
                                        "opcode": "sensing_gray",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "param_2": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "2",
                                        "type": "10",
                                        "value": "70"
                                    },
                                    "x": "208",
                                    "y": "1381"
                                },
                                "opcode": "operator_logic",
                                "position": "1",
                                "type": "12"
                            },
                            "x": "114",
                            "y": "1376"
                        },
                        "item_0000000203": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "95"
                            },
                            "x": "114",
                            "y": "1436"
                        },
                        "type": "15"
                    },
                    "x": "94",
                    "y": "1266"
                },
                "type": "15"
            },
            "x": "74",
            "y": "1206"
        },
        "item_0000000220": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000207": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000206": {
                            "blocktype": 5,
                            "opcode": "variable_turns",
                            "varname": "turns",
                            "x": "159",
                            "y": "1556"
                        },
                        "opcode": "variable_turns",
                        "position": "0",
                        "type": "10"
                    },
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "3"
                    },
                    "param_2": {
                        "opcode": "CGraphicsTextItem",
                        "position": "2",
                        "type": "10",
                        "value": "12"
                    },
                    "x": "139",
                    "y": "1551"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000219": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000209": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000208": {
                                    "disabled": "0",
                                    "opcode": "sensing_gray",
                                    "param_0": {
                                        "position": "0",
                                        "type": "11",
                                        "value": "5"
                                    },
                                    "x": "145",
                                    "y": "1616"
                                },
                                "opcode": "sensing_gray",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "1"
                            },
                            "param_2": {
                                "opcode": "CGraphicsTextItem",
                                "position": "2",
                                "type": "10",
                                "value": "70"
                            },
                            "x": "125",
                            "y": "1611"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000217": {
                            "disabled": "0",
                            "opcode": "control_waituntil",
                            "param_1": {
                                "item_0000000216": {
                                    "disabled": "0",
                                    "opcode": "operator_or",
                                    "param_0": {
                                        "item_0000000212": {
                                            "disabled": "0",
                                            "opcode": "operator_logic",
                                            "param_0": {
                                                "item_0000000210": {
                                                    "blocktype": 5,
                                                    "opcode": "variable_IC",
                                                    "varname": "IC",
                                                    "x": "238",
                                                    "y": "1681"
                                                },
                                                "opcode": "variable_IC",
                                                "position": "0",
                                                "type": "10"
                                            },
                                            "param_1": {
                                                "position": "1",
                                                "type": "11",
                                                "value": "1"
                                            },
                                            "param_2": {
                                                "item_0000000211": {
                                                    "blocktype": 5,
                                                    "opcode": "variable_DFC",
                                                    "varname": "DFC",
                                                    "x": "348",
                                                    "y": "1681"
                                                },
                                                "opcode": "variable_DFC",
                                                "position": "2",
                                                "type": "10"
                                            },
                                            "x": "218",
                                            "y": "1676"
                                        },
                                        "opcode": "operator_logic",
                                        "position": "0",
                                        "type": "12"
                                    },
                                    "param_2": {
                                        "item_0000000215": {
                                            "disabled": "0",
                                            "opcode": "operator_logic",
                                            "param_0": {
                                                "item_0000000213": {
                                                    "blocktype": 5,
                                                    "opcode": "variable_IC",
                                                    "varname": "IC",
                                                    "x": "475",
                                                    "y": "1681"
                                                },
                                                "opcode": "variable_IC",
                                                "position": "0",
                                                "type": "10"
                                            },
                                            "param_1": {
                                                "position": "1",
                                                "type": "11",
                                                "value": "3"
                                            },
                                            "param_2": {
                                                "item_0000000214": {
                                                    "blocktype": 5,
                                                    "opcode": "variable_DFC",
                                                    "varname": "DFC",
                                                    "x": "585",
                                                    "y": "1681"
                                                },
                                                "opcode": "variable_DFC",
                                                "position": "2",
                                                "type": "10"
                                            },
                                            "x": "455",
                                            "y": "1676"
                                        },
                                        "opcode": "operator_logic",
                                        "position": "2",
                                        "type": "12"
                                    },
                                    "x": "208",
                                    "y": "1671"
                                },
                                "opcode": "operator_or",
                                "position": "1",
                                "type": "12"
                            },
                            "x": "114",
                            "y": "1666"
                        },
                        "item_0000000218": {
                            "disabled": "0",
                            "opcode": "MakerMotion_stopOne",
                            "param_0": {
                                "position": "0",
                                "type": "11",
                                "value": "1"
                            },
                            "x": "114",
                            "y": "1736"
                        },
                        "type": "15"
                    },
                    "x": "94",
                    "y": "1606"
                },
                "type": "15"
            },
            "x": "74",
            "y": "1546"
        },
        "item_0000000229": {
            "disabled": "0",
            "opcode": "control_if",
            "param_1": {
                "item_0000000222": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000221": {
                            "disabled": "0",
                            "opcode": "sensing_gray",
                            "param_0": {
                                "position": "0",
                                "type": "11",
                                "value": "5"
                            },
                            "x": "125",
                            "y": "1856"
                        },
                        "opcode": "sensing_gray",
                        "position": "0",
                        "type": "10"
                    },
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "1"
                    },
                    "param_2": {
                        "opcode": "CGraphicsTextItem",
                        "position": "2",
                        "type": "10",
                        "value": "70"
                    },
                    "x": "105",
                    "y": "1851"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000228": {
                    "disabled": "0",
                    "opcode": "control_while",
                    "param_1": {
                        "item_0000000225": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000223": {
                                    "blocktype": 5,
                                    "opcode": "variable_IC",
                                    "varname": "IC",
                                    "x": "179",
                                    "y": "1916"
                                },
                                "opcode": "variable_IC",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "2"
                            },
                            "param_2": {
                                "item_0000000224": {
                                    "blocktype": 5,
                                    "opcode": "variable_DFC",
                                    "varname": "DFC",
                                    "x": "288",
                                    "y": "1916"
                                },
                                "opcode": "variable_DFC",
                                "position": "2",
                                "type": "10"
                            },
                            "x": "159",
                            "y": "1911"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000226": {
                            "disabled": "0",
                            "opcode": "control_wait",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "0.2"
                            },
                            "x": "114",
                            "y": "1966"
                        },
                        "item_0000000227": {
                            "disabled": "0",
                            "opcode": "data_changevariableby",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "12"
                            },
                            "param_3": {
                                "opcode": "CGraphicsTextItem",
                                "position": "3",
                                "type": "10",
                                "value": "0.2"
                            },
                            "x": "114",
                            "y": "2016"
                        },
                        "type": "15"
                    },
                    "x": "94",
                    "y": "1906"
                },
                "type": "15"
            },
            "x": "74",
            "y": "1846"
        }
    },
    "top_35": {
        "item_0000000231": {
            "disabled": "0",
            "opcode": "control_if",
            "param_1": {
                "item_0000000230": {
                    "disabled": "0",
                    "opcode": "empty",
                    "x": "4617",
                    "y": "637"
                },
                "opcode": "empty",
                "position": "1",
                "type": "12"
            },
            "x": "4586",
            "y": "627"
        }
    },
    "top_36": {
        "item_0000000232": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "1"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": ""
            },
            "x": "4081",
            "y": "79"
        }
    },
    "top_37": {
        "item_0000000233": {
            "blocktype": 6,
            "disabled": "0",
            "function_2": {
                "param_0": {
                    "paramname": "OAMapCounterClockwise",
                    "type": 3
                }
            },
            "opcode": "function_2",
            "param_0": {
                "opcode": "CGraphicsTextItem",
                "position": "0",
                "type": "9",
                "value": "OAMapCounterClockwise"
            },
            "x": "6455",
            "y": "75"
        },
        "item_0000000234": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "1"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "5"
            },
            "x": "6455",
            "y": "135"
        },
        "item_0000000235": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "2"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "60"
            },
            "x": "6455",
            "y": "185"
        },
        "item_0000000236": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "3"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "3"
            },
            "x": "6455",
            "y": "235"
        },
        "item_0000000237": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "4"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "15"
            },
            "x": "6455",
            "y": "285"
        },
        "item_0000000238": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "5"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "0"
            },
            "x": "6455",
            "y": "335"
        },
        "item_0000000239": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "6"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "0"
            },
            "x": "6455",
            "y": "385"
        },
        "item_0000000258": {
            "disabled": "0",
            "opcode": "control_forever",
            "substack1": {
                "item_0000000241": {
                    "disabled": "0",
                    "opcode": "data_setvariableto",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "5"
                    },
                    "param_3": {
                        "item_0000000240": {
                            "disabled": "0",
                            "opcode": "MakerSensor_InfreadDistance",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "2"
                            },
                            "x": "6679",
                            "y": "490"
                        },
                        "opcode": "MakerSensor_InfreadDistance",
                        "position": "3",
                        "type": "10"
                    },
                    "x": "6475",
                    "y": "485"
                },
                "item_0000000249": {
                    "disabled": "0",
                    "opcode": "data_setvariableto",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "5"
                    },
                    "param_3": {
                        "item_0000000248": {
                            "disabled": "0",
                            "opcode": "operator_math",
                            "param_0": {
                                "item_0000000244": {
                                    "disabled": "0",
                                    "opcode": "operator_math",
                                    "param_0": {
                                        "item_0000000242": {
                                            "blocktype": 5,
                                            "opcode": "variable_oaval",
                                            "varname": "oaval",
                                            "x": "6709",
                                            "y": "550"
                                        },
                                        "opcode": "variable_oaval",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "2"
                                    },
                                    "param_2": {
                                        "item_0000000243": {
                                            "blocktype": 5,
                                            "opcode": "variable_A",
                                            "varname": "A",
                                            "x": "6834",
                                            "y": "550"
                                        },
                                        "opcode": "variable_A",
                                        "position": "2",
                                        "type": "10"
                                    },
                                    "x": "6694",
                                    "y": "545"
                                },
                                "opcode": "operator_math",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "1"
                            },
                            "param_2": {
                                "item_0000000247": {
                                    "disabled": "0",
                                    "opcode": "operator_math",
                                    "param_0": {
                                        "item_0000000245": {
                                            "blocktype": 5,
                                            "opcode": "variable_b",
                                            "varname": "b",
                                            "x": "6973",
                                            "y": "550"
                                        },
                                        "opcode": "variable_b",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "2"
                                    },
                                    "param_2": {
                                        "item_0000000246": {
                                            "blocktype": 5,
                                            "opcode": "variable_a",
                                            "varname": "a",
                                            "x": "7079",
                                            "y": "550"
                                        },
                                        "opcode": "variable_a",
                                        "position": "2",
                                        "type": "10"
                                    },
                                    "x": "6958",
                                    "y": "545"
                                },
                                "opcode": "operator_math",
                                "position": "2",
                                "type": "10"
                            },
                            "x": "6679",
                            "y": "540"
                        },
                        "opcode": "operator_math",
                        "position": "3",
                        "type": "10"
                    },
                    "x": "6475",
                    "y": "535"
                },
                "item_0000000257": {
                    "disabled": "0",
                    "opcode": "data_setvariableto",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "6"
                    },
                    "param_3": {
                        "item_0000000256": {
                            "disabled": "0",
                            "opcode": "operator_math",
                            "param_0": {
                                "item_0000000254": {
                                    "disabled": "0",
                                    "opcode": "operator_math",
                                    "param_0": {
                                        "item_0000000250": {
                                            "blocktype": 5,
                                            "opcode": "variable_oaval",
                                            "varname": "oaval",
                                            "x": "6732",
                                            "y": "625"
                                        },
                                        "opcode": "variable_oaval",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "4"
                                    },
                                    "param_2": {
                                        "item_0000000253": {
                                            "disabled": "0",
                                            "opcode": "operator_math",
                                            "param_0": {
                                                "item_0000000251": {
                                                    "blocktype": 5,
                                                    "opcode": "variable_b",
                                                    "varname": "b",
                                                    "x": "6873",
                                                    "y": "625"
                                                },
                                                "opcode": "variable_b",
                                                "position": "0",
                                                "type": "10"
                                            },
                                            "param_1": {
                                                "position": "1",
                                                "type": "11",
                                                "value": "2"
                                            },
                                            "param_2": {
                                                "item_0000000252": {
                                                    "blocktype": 5,
                                                    "opcode": "variable_A",
                                                    "varname": "A",
                                                    "x": "6979",
                                                    "y": "625"
                                                },
                                                "opcode": "variable_A",
                                                "position": "2",
                                                "type": "10"
                                            },
                                            "x": "6858",
                                            "y": "620"
                                        },
                                        "opcode": "operator_math",
                                        "position": "2",
                                        "type": "10"
                                    },
                                    "x": "6717",
                                    "y": "615"
                                },
                                "opcode": "operator_math",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "1"
                            },
                            "param_2": {
                                "item_0000000255": {
                                    "blocktype": 5,
                                    "opcode": "variable_a",
                                    "varname": "a",
                                    "x": "7118",
                                    "y": "625"
                                },
                                "opcode": "variable_a",
                                "position": "2",
                                "type": "10"
                            },
                            "x": "6702",
                            "y": "610"
                        },
                        "opcode": "operator_math",
                        "position": "3",
                        "type": "10"
                    },
                    "x": "6475",
                    "y": "605"
                },
                "type": "15"
            },
            "x": "6455",
            "y": "435"
        }
    },
    "top_38": {
        "item_0000000259": {
            "disabled": "0",
            "opcode": "data_changevariableby",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "1"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": ""
            },
            "x": "4083",
            "y": "157"
        }
    },
    "top_39": {
        "item_0000000260": {
            "disabled": "0",
            "opcode": "break",
            "x": "4701",
            "y": "239"
        },
        "item_0000000261": {
            "disabled": "0",
            "opcode": "control_wait",
            "param_1": {
                "opcode": "CGraphicsTextItem",
                "position": "1",
                "type": "10",
                "value": "1"
            },
            "x": "4701",
            "y": "289"
        }
    },
    "top_4": {
        "item_0000000009": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000006": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000005": {
                            "blocktype": 5,
                            "opcode": "variable_checkdistance",
                            "varname": "checkdistance",
                            "x": "3365",
                            "y": "2810"
                        },
                        "opcode": "variable_checkdistance",
                        "position": "0",
                        "type": "10"
                    },
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "3"
                    },
                    "param_2": {
                        "opcode": "CGraphicsTextItem",
                        "position": "2",
                        "type": "10",
                        "value": "3"
                    },
                    "x": "3345",
                    "y": "2805"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000007": {
                    "disabled": "0",
                    "opcode": "data_changevariableby",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "19"
                    },
                    "param_3": {
                        "opcode": "CGraphicsTextItem",
                        "position": "3",
                        "type": "10",
                        "value": "0.2"
                    },
                    "x": "3300",
                    "y": "2860"
                },
                "item_0000000008": {
                    "disabled": "0",
                    "opcode": "control_wait",
                    "param_1": {
                        "opcode": "CGraphicsTextItem",
                        "position": "1",
                        "type": "10",
                        "value": "0.2"
                    },
                    "x": "3300",
                    "y": "2910"
                },
                "type": "15"
            },
            "x": "3280",
            "y": "2800"
        }
    },
    "top_40": {
        "item_0000000276": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000263": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000262": {
                            "blocktype": 5,
                            "opcode": "variable_turns",
                            "varname": "turns",
                            "x": "1659",
                            "y": "2311"
                        },
                        "opcode": "variable_turns",
                        "position": "0",
                        "type": "10"
                    },
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "3"
                    },
                    "param_2": {
                        "opcode": "CGraphicsTextItem",
                        "position": "2",
                        "type": "10",
                        "value": "12"
                    },
                    "x": "1639",
                    "y": "2306"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000275": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000265": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000264": {
                                    "disabled": "0",
                                    "opcode": "sensing_gray",
                                    "param_0": {
                                        "position": "0",
                                        "type": "11",
                                        "value": "5"
                                    },
                                    "x": "1645",
                                    "y": "2371"
                                },
                                "opcode": "sensing_gray",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "1"
                            },
                            "param_2": {
                                "opcode": "CGraphicsTextItem",
                                "position": "2",
                                "type": "10",
                                "value": "70"
                            },
                            "x": "1625",
                            "y": "2366"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000273": {
                            "disabled": "0",
                            "opcode": "control_waituntil",
                            "param_1": {
                                "item_0000000272": {
                                    "disabled": "0",
                                    "opcode": "operator_or",
                                    "param_0": {
                                        "item_0000000268": {
                                            "disabled": "0",
                                            "opcode": "operator_logic",
                                            "param_0": {
                                                "item_0000000266": {
                                                    "blocktype": 5,
                                                    "opcode": "variable_IC",
                                                    "varname": "IC",
                                                    "x": "1738",
                                                    "y": "2436"
                                                },
                                                "opcode": "variable_IC",
                                                "position": "0",
                                                "type": "10"
                                            },
                                            "param_1": {
                                                "position": "1",
                                                "type": "11",
                                                "value": "1"
                                            },
                                            "param_2": {
                                                "item_0000000267": {
                                                    "blocktype": 5,
                                                    "opcode": "variable_DFC",
                                                    "varname": "DFC",
                                                    "x": "1848",
                                                    "y": "2436"
                                                },
                                                "opcode": "variable_DFC",
                                                "position": "2",
                                                "type": "10"
                                            },
                                            "x": "1718",
                                            "y": "2431"
                                        },
                                        "opcode": "operator_logic",
                                        "position": "0",
                                        "type": "12"
                                    },
                                    "param_2": {
                                        "item_0000000271": {
                                            "disabled": "0",
                                            "opcode": "operator_logic",
                                            "param_0": {
                                                "item_0000000269": {
                                                    "blocktype": 5,
                                                    "opcode": "variable_IC",
                                                    "varname": "IC",
                                                    "x": "1975",
                                                    "y": "2436"
                                                },
                                                "opcode": "variable_IC",
                                                "position": "0",
                                                "type": "10"
                                            },
                                            "param_1": {
                                                "position": "1",
                                                "type": "11",
                                                "value": "3"
                                            },
                                            "param_2": {
                                                "item_0000000270": {
                                                    "blocktype": 5,
                                                    "opcode": "variable_DFC",
                                                    "varname": "DFC",
                                                    "x": "2085",
                                                    "y": "2436"
                                                },
                                                "opcode": "variable_DFC",
                                                "position": "2",
                                                "type": "10"
                                            },
                                            "x": "1955",
                                            "y": "2431"
                                        },
                                        "opcode": "operator_logic",
                                        "position": "2",
                                        "type": "12"
                                    },
                                    "x": "1708",
                                    "y": "2426"
                                },
                                "opcode": "operator_or",
                                "position": "1",
                                "type": "12"
                            },
                            "x": "1614",
                            "y": "2421"
                        },
                        "item_0000000274": {
                            "disabled": "0",
                            "opcode": "MakerMotion_stopOne",
                            "param_0": {
                                "position": "0",
                                "type": "11",
                                "value": "1"
                            },
                            "x": "1614",
                            "y": "2491"
                        },
                        "type": "15"
                    },
                    "x": "1594",
                    "y": "2361"
                },
                "type": "15"
            },
            "x": "1574",
            "y": "2301"
        },
        "item_0000000285": {
            "disabled": "0",
            "opcode": "control_if",
            "param_1": {
                "item_0000000278": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000277": {
                            "disabled": "0",
                            "opcode": "sensing_gray",
                            "param_0": {
                                "position": "0",
                                "type": "11",
                                "value": "5"
                            },
                            "x": "1625",
                            "y": "2611"
                        },
                        "opcode": "sensing_gray",
                        "position": "0",
                        "type": "10"
                    },
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "1"
                    },
                    "param_2": {
                        "opcode": "CGraphicsTextItem",
                        "position": "2",
                        "type": "10",
                        "value": "70"
                    },
                    "x": "1605",
                    "y": "2606"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000284": {
                    "disabled": "0",
                    "opcode": "control_while",
                    "param_1": {
                        "item_0000000281": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000279": {
                                    "blocktype": 5,
                                    "opcode": "variable_IC",
                                    "varname": "IC",
                                    "x": "1679",
                                    "y": "2671"
                                },
                                "opcode": "variable_IC",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "2"
                            },
                            "param_2": {
                                "item_0000000280": {
                                    "blocktype": 5,
                                    "opcode": "variable_DFC",
                                    "varname": "DFC",
                                    "x": "1788",
                                    "y": "2671"
                                },
                                "opcode": "variable_DFC",
                                "position": "2",
                                "type": "10"
                            },
                            "x": "1659",
                            "y": "2666"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000282": {
                            "disabled": "0",
                            "opcode": "control_wait",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "0.2"
                            },
                            "x": "1614",
                            "y": "2721"
                        },
                        "item_0000000283": {
                            "disabled": "0",
                            "opcode": "data_changevariableby",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "12"
                            },
                            "param_3": {
                                "opcode": "CGraphicsTextItem",
                                "position": "3",
                                "type": "10",
                                "value": "0.2"
                            },
                            "x": "1614",
                            "y": "2771"
                        },
                        "type": "15"
                    },
                    "x": "1594",
                    "y": "2661"
                },
                "type": "15"
            },
            "x": "1574",
            "y": "2601"
        }
    },
    "top_41": {
        "item_0000000286": {
            "disabled": "0",
            "opcode": "MakerLED_ALLColorLED",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "4"
            },
            "param_3": {
                "position": "3",
                "type": "13",
                "value": "#ffffff"
            },
            "x": "4303",
            "y": "826"
        }
    },
    "top_42": {
        "item_0000000287": {
            "blocktype": 5,
            "opcode": "variable_OAProxyLeft",
            "varname": "OAProxyLeft",
            "x": "3821",
            "y": "149"
        }
    },
    "top_43": {
        "item_0000000288": {
            "blocktype": 6,
            "disabled": "0",
            "function_4": {
                "param_0": {
                    "paramname": "CounterClockwise",
                    "type": 3
                }
            },
            "opcode": "function_4",
            "param_0": {
                "opcode": "CGraphicsTextItem",
                "position": "0",
                "type": "9",
                "value": "CounterClockwise"
            },
            "x": "5920",
            "y": "80"
        }
    },
    "top_44": {
        "item_0000000289": {
            "blocktype": 5,
            "opcode": "variable_b",
            "varname": "b",
            "x": "4264",
            "y": "22"
        }
    },
    "top_45": {
        "item_0000000290": {
            "blocktype": 5,
            "opcode": "variable_OC",
            "varname": "OC",
            "x": "3872",
            "y": "33"
        }
    },
    "top_46": {
        "item_0000000291": {
            "disabled": "0",
            "opcode": "MakerLED_CloseColorLED",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "4"
            },
            "x": "4297",
            "y": "904"
        }
    },
    "top_47": {
        "item_0000000292": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "7"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "1"
            },
            "x": "4299",
            "y": "1054"
        },
        "item_0000000312": {
            "disabled": "0",
            "opcode": "control_forever",
            "substack1": {
                "item_0000000311": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000294": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000293": {
                                    "blocktype": 5,
                                    "opcode": "variable_sensorstate",
                                    "varname": "sensorstate",
                                    "x": "4370",
                                    "y": "1164"
                                },
                                "opcode": "variable_sensorstate",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "3"
                            },
                            "param_2": {
                                "opcode": "CGraphicsTextItem",
                                "position": "2",
                                "type": "10",
                                "value": "1"
                            },
                            "x": "4350",
                            "y": "1159"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000302": {
                            "disabled": "0",
                            "opcode": "control_if",
                            "param_1": {
                                "item_0000000296": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000295": {
                                            "disabled": "0",
                                            "opcode": "sensing_gray",
                                            "param_0": {
                                                "position": "0",
                                                "type": "11",
                                                "value": "1"
                                            },
                                            "x": "4390",
                                            "y": "1224"
                                        },
                                        "opcode": "sensing_gray",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "param_2": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "2",
                                        "type": "10",
                                        "value": "100"
                                    },
                                    "x": "4370",
                                    "y": "1219"
                                },
                                "opcode": "operator_logic",
                                "position": "1",
                                "type": "12"
                            },
                            "substack1": {
                                "item_0000000297": {
                                    "disabled": "0",
                                    "opcode": "data_setvariableto",
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "7"
                                    },
                                    "param_3": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "3",
                                        "type": "10",
                                        "value": "0"
                                    },
                                    "x": "4359",
                                    "y": "1274"
                                },
                                "item_0000000298": {
                                    "disabled": "0",
                                    "opcode": "function_3",
                                    "x": "4359",
                                    "y": "1324"
                                },
                                "item_0000000299": {
                                    "disabled": "0",
                                    "opcode": "MakerLED_ALLColorLED",
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "4"
                                    },
                                    "param_3": {
                                        "position": "3",
                                        "type": "13",
                                        "value": "#00aaaa"
                                    },
                                    "x": "4359",
                                    "y": "1374"
                                },
                                "item_0000000300": {
                                    "disabled": "0",
                                    "opcode": "control_wait",
                                    "param_1": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "1",
                                        "type": "10",
                                        "value": "0.2"
                                    },
                                    "x": "4359",
                                    "y": "1424"
                                },
                                "item_0000000301": {
                                    "disabled": "0",
                                    "opcode": "MakerLED_CloseColorLED",
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "4"
                                    },
                                    "x": "4359",
                                    "y": "1474"
                                },
                                "type": "15"
                            },
                            "x": "4339",
                            "y": "1214"
                        },
                        "item_0000000307": {
                            "disabled": "0",
                            "opcode": "control_if",
                            "param_1": {
                                "item_0000000304": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000303": {
                                            "disabled": "0",
                                            "opcode": "sensing_gray",
                                            "param_0": {
                                                "position": "0",
                                                "type": "11",
                                                "value": "5"
                                            },
                                            "x": "4390",
                                            "y": "1564"
                                        },
                                        "opcode": "sensing_gray",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "param_2": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "2",
                                        "type": "10",
                                        "value": "100"
                                    },
                                    "x": "4370",
                                    "y": "1559"
                                },
                                "opcode": "operator_logic",
                                "position": "1",
                                "type": "12"
                            },
                            "substack1": {
                                "item_0000000305": {
                                    "disabled": "0",
                                    "opcode": "data_setvariableto",
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "7"
                                    },
                                    "param_3": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "3",
                                        "type": "10",
                                        "value": "0"
                                    },
                                    "x": "4359",
                                    "y": "1614"
                                },
                                "item_0000000306": {
                                    "disabled": "0",
                                    "opcode": "function_4",
                                    "x": "4359",
                                    "y": "1664"
                                },
                                "type": "15"
                            },
                            "x": "4339",
                            "y": "1554"
                        },
                        "item_0000000308": {
                            "disabled": "0",
                            "opcode": "MakerLED_ALLColorLED",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "4"
                            },
                            "param_3": {
                                "position": "3",
                                "type": "13",
                                "value": "#ffd200"
                            },
                            "x": "4339",
                            "y": "1744"
                        },
                        "item_0000000309": {
                            "disabled": "0",
                            "opcode": "control_wait",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "0.2"
                            },
                            "x": "4339",
                            "y": "1794"
                        },
                        "item_0000000310": {
                            "disabled": "0",
                            "opcode": "MakerLED_CloseColorLED",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "4"
                            },
                            "x": "4339",
                            "y": "1844"
                        },
                        "type": "15"
                    },
                    "x": "4319",
                    "y": "1154"
                },
                "type": "15"
            },
            "x": "4299",
            "y": "1104"
        }
    },
    "top_48": {
        "item_0000000313": {
            "blocktype": 5,
            "opcode": "variable_CD",
            "varname": "CD",
            "x": "3808",
            "y": "33"
        }
    },
    "top_49": {
        "item_0000000314": {
            "disabled": "0",
            "opcode": "function_2",
            "x": "6196",
            "y": "7"
        }
    },
    "top_5": {
        "item_0000000020": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000011": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000010": {
                            "blocktype": 5,
                            "opcode": "variable_turns",
                            "varname": "turns",
                            "x": "1618",
                            "y": "3585"
                        },
                        "opcode": "variable_turns",
                        "position": "0",
                        "type": "10"
                    },
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "3"
                    },
                    "param_2": {
                        "opcode": "CGraphicsTextItem",
                        "position": "2",
                        "type": "10",
                        "value": "12"
                    },
                    "x": "1598",
                    "y": "3580"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000019": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000013": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000012": {
                                    "disabled": "0",
                                    "opcode": "sensing_gray",
                                    "param_0": {
                                        "position": "0",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "x": "1604",
                                    "y": "3645"
                                },
                                "opcode": "sensing_gray",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "1"
                            },
                            "param_2": {
                                "opcode": "CGraphicsTextItem",
                                "position": "2",
                                "type": "10",
                                "value": "70"
                            },
                            "x": "1584",
                            "y": "3640"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000014": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "135"
                            },
                            "x": "1573",
                            "y": "3695"
                        },
                        "item_0000000017": {
                            "disabled": "0",
                            "opcode": "control_waituntil",
                            "param_1": {
                                "item_0000000016": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000015": {
                                            "disabled": "0",
                                            "opcode": "sensing_gray",
                                            "param_0": {
                                                "position": "0",
                                                "type": "11",
                                                "value": "5"
                                            },
                                            "x": "1687",
                                            "y": "3755"
                                        },
                                        "opcode": "sensing_gray",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "param_2": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "2",
                                        "type": "10",
                                        "value": "70"
                                    },
                                    "x": "1667",
                                    "y": "3750"
                                },
                                "opcode": "operator_logic",
                                "position": "1",
                                "type": "12"
                            },
                            "x": "1573",
                            "y": "3745"
                        },
                        "item_0000000018": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "95"
                            },
                            "x": "1573",
                            "y": "3805"
                        },
                        "type": "15"
                    },
                    "x": "1553",
                    "y": "3635"
                },
                "type": "15"
            },
            "x": "1533",
            "y": "3575"
        },
        "item_0000000035": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000022": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000021": {
                            "blocktype": 5,
                            "opcode": "variable_turns",
                            "varname": "turns",
                            "x": "1618",
                            "y": "3925"
                        },
                        "opcode": "variable_turns",
                        "position": "0",
                        "type": "10"
                    },
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "3"
                    },
                    "param_2": {
                        "opcode": "CGraphicsTextItem",
                        "position": "2",
                        "type": "10",
                        "value": "12"
                    },
                    "x": "1598",
                    "y": "3920"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000034": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000024": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000023": {
                                    "disabled": "0",
                                    "opcode": "sensing_gray",
                                    "param_0": {
                                        "position": "0",
                                        "type": "11",
                                        "value": "5"
                                    },
                                    "x": "1604",
                                    "y": "3985"
                                },
                                "opcode": "sensing_gray",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "1"
                            },
                            "param_2": {
                                "opcode": "CGraphicsTextItem",
                                "position": "2",
                                "type": "10",
                                "value": "70"
                            },
                            "x": "1584",
                            "y": "3980"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000032": {
                            "disabled": "0",
                            "opcode": "control_waituntil",
                            "param_1": {
                                "item_0000000031": {
                                    "disabled": "0",
                                    "opcode": "operator_or",
                                    "param_0": {
                                        "item_0000000027": {
                                            "disabled": "0",
                                            "opcode": "operator_logic",
                                            "param_0": {
                                                "item_0000000025": {
                                                    "blocktype": 5,
                                                    "opcode": "variable_IC",
                                                    "varname": "IC",
                                                    "x": "1697",
                                                    "y": "4050"
                                                },
                                                "opcode": "variable_IC",
                                                "position": "0",
                                                "type": "10"
                                            },
                                            "param_1": {
                                                "position": "1",
                                                "type": "11",
                                                "value": "1"
                                            },
                                            "param_2": {
                                                "item_0000000026": {
                                                    "blocktype": 5,
                                                    "opcode": "variable_DFC",
                                                    "varname": "DFC",
                                                    "x": "1807",
                                                    "y": "4050"
                                                },
                                                "opcode": "variable_DFC",
                                                "position": "2",
                                                "type": "10"
                                            },
                                            "x": "1677",
                                            "y": "4045"
                                        },
                                        "opcode": "operator_logic",
                                        "position": "0",
                                        "type": "12"
                                    },
                                    "param_2": {
                                        "item_0000000030": {
                                            "disabled": "0",
                                            "opcode": "operator_logic",
                                            "param_0": {
                                                "item_0000000028": {
                                                    "blocktype": 5,
                                                    "opcode": "variable_IC",
                                                    "varname": "IC",
                                                    "x": "1934",
                                                    "y": "4050"
                                                },
                                                "opcode": "variable_IC",
                                                "position": "0",
                                                "type": "10"
                                            },
                                            "param_1": {
                                                "position": "1",
                                                "type": "11",
                                                "value": "3"
                                            },
                                            "param_2": {
                                                "item_0000000029": {
                                                    "blocktype": 5,
                                                    "opcode": "variable_DFC",
                                                    "varname": "DFC",
                                                    "x": "2044",
                                                    "y": "4050"
                                                },
                                                "opcode": "variable_DFC",
                                                "position": "2",
                                                "type": "10"
                                            },
                                            "x": "1914",
                                            "y": "4045"
                                        },
                                        "opcode": "operator_logic",
                                        "position": "2",
                                        "type": "12"
                                    },
                                    "x": "1667",
                                    "y": "4040"
                                },
                                "opcode": "operator_or",
                                "position": "1",
                                "type": "12"
                            },
                            "x": "1573",
                            "y": "4035"
                        },
                        "item_0000000033": {
                            "disabled": "0",
                            "opcode": "MakerMotion_stopOne",
                            "param_0": {
                                "position": "0",
                                "type": "11",
                                "value": "1"
                            },
                            "x": "1573",
                            "y": "4105"
                        },
                        "type": "15"
                    },
                    "x": "1553",
                    "y": "3975"
                },
                "type": "15"
            },
            "x": "1533",
            "y": "3915"
        },
        "item_0000000044": {
            "disabled": "0",
            "opcode": "control_if",
            "param_1": {
                "item_0000000037": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000036": {
                            "disabled": "0",
                            "opcode": "sensing_gray",
                            "param_0": {
                                "position": "0",
                                "type": "11",
                                "value": "5"
                            },
                            "x": "1584",
                            "y": "4225"
                        },
                        "opcode": "sensing_gray",
                        "position": "0",
                        "type": "10"
                    },
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "1"
                    },
                    "param_2": {
                        "opcode": "CGraphicsTextItem",
                        "position": "2",
                        "type": "10",
                        "value": "70"
                    },
                    "x": "1564",
                    "y": "4220"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000043": {
                    "disabled": "0",
                    "opcode": "control_while",
                    "param_1": {
                        "item_0000000040": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000038": {
                                    "blocktype": 5,
                                    "opcode": "variable_IC",
                                    "varname": "IC",
                                    "x": "1638",
                                    "y": "4285"
                                },
                                "opcode": "variable_IC",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "2"
                            },
                            "param_2": {
                                "item_0000000039": {
                                    "blocktype": 5,
                                    "opcode": "variable_DFC",
                                    "varname": "DFC",
                                    "x": "1747",
                                    "y": "4285"
                                },
                                "opcode": "variable_DFC",
                                "position": "2",
                                "type": "10"
                            },
                            "x": "1618",
                            "y": "4280"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000041": {
                            "disabled": "0",
                            "opcode": "control_wait",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "0.2"
                            },
                            "x": "1573",
                            "y": "4335"
                        },
                        "item_0000000042": {
                            "disabled": "0",
                            "opcode": "data_changevariableby",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "12"
                            },
                            "param_3": {
                                "opcode": "CGraphicsTextItem",
                                "position": "3",
                                "type": "10",
                                "value": "0.2"
                            },
                            "x": "1573",
                            "y": "4385"
                        },
                        "type": "15"
                    },
                    "x": "1553",
                    "y": "4275"
                },
                "type": "15"
            },
            "x": "1533",
            "y": "4215"
        }
    },
    "top_50": {
        "item_0000000315": {
            "blocktype": 5,
            "opcode": "variable_checkdistance",
            "varname": "checkdistance",
            "x": "3574",
            "y": "2117"
        }
    },
    "top_51": {
        "item_0000000316": {
            "disabled": "0",
            "opcode": "sensing_gray",
            "param_0": {
                "position": "0",
                "type": "11",
                "value": "1"
            },
            "x": "4308",
            "y": "376"
        }
    },
    "top_52": {
        "item_0000000317": {
            "disabled": "0",
            "opcode": "operator_math",
            "param_0": {
                "opcode": "CGraphicsTextItem",
                "position": "0",
                "type": "10",
                "value": ""
            },
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "1"
            },
            "param_2": {
                "opcode": "CGraphicsTextItem",
                "position": "2",
                "type": "10",
                "value": ""
            },
            "x": "4337",
            "y": "25"
        }
    },
    "top_53": {
        "item_0000000318": {
            "blocktype": 5,
            "opcode": "variable_PFC",
            "varname": "PFC",
            "x": "3806",
            "y": "92"
        }
    },
    "top_54": {
        "item_0000000319": {
            "disabled": "0",
            "opcode": "MakerSensor_InfreadDistance",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "1"
            },
            "x": "4633",
            "y": "380"
        }
    },
    "top_55": {
        "item_0000000320": {
            "blocktype": 6,
            "disabled": "0",
            "function_3": {
                "param_0": {
                    "paramname": "Clockwise",
                    "type": 3
                }
            },
            "opcode": "function_3",
            "param_0": {
                "opcode": "CGraphicsTextItem",
                "position": "0",
                "type": "9",
                "value": "Clockwise"
            },
            "x": "5711",
            "y": "82"
        }
    },
    "top_56": {
        "item_0000000321": {
            "blocktype": 5,
            "opcode": "variable_A",
            "varname": "A",
            "x": "4088",
            "y": "23"
        }
    },
    "top_57": {
        "item_0000000322": {
            "blocktype": 5,
            "opcode": "variable_B",
            "varname": "B",
            "x": "4145",
            "y": "26"
        }
    },
    "top_58": {
        "item_0000000345": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000323": {
                    "disabled": "0",
                    "opcode": "empty",
                    "x": "1840",
                    "y": "1010"
                },
                "opcode": "empty",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000330": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000328": {
                            "disabled": "0",
                            "opcode": "operator_and",
                            "param_0": {
                                "item_0000000325": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000324": {
                                            "blocktype": 5,
                                            "opcode": "variable_TE",
                                            "varname": "TE",
                                            "x": "1856",
                                            "y": "1065"
                                        },
                                        "opcode": "variable_TE",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "2"
                                    },
                                    "param_2": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "2",
                                        "type": "10",
                                        "value": ""
                                    },
                                    "x": "1836",
                                    "y": "1060"
                                },
                                "opcode": "operator_logic",
                                "position": "0",
                                "type": "12"
                            },
                            "param_2": {
                                "item_0000000327": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000326": {
                                            "blocktype": 5,
                                            "opcode": "variable_TE",
                                            "varname": "TE",
                                            "x": "2094",
                                            "y": "1065"
                                        },
                                        "opcode": "variable_TE",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "param_2": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "2",
                                        "type": "10",
                                        "value": ""
                                    },
                                    "x": "2074",
                                    "y": "1060"
                                },
                                "opcode": "operator_logic",
                                "position": "2",
                                "type": "12"
                            },
                            "x": "1826",
                            "y": "1055"
                        },
                        "opcode": "operator_and",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000329": {
                            "disabled": "0",
                            "opcode": "data_setvariableto",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "17"
                            },
                            "param_3": {
                                "opcode": "CGraphicsTextItem",
                                "position": "3",
                                "type": "10",
                                "value": "0"
                            },
                            "x": "1815",
                            "y": "1120"
                        },
                        "type": "15"
                    },
                    "x": "1795",
                    "y": "1050"
                },
                "item_0000000337": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000335": {
                            "disabled": "0",
                            "opcode": "operator_and",
                            "param_0": {
                                "item_0000000332": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000331": {
                                            "blocktype": 5,
                                            "opcode": "variable_TE",
                                            "varname": "TE",
                                            "x": "1856",
                                            "y": "1215"
                                        },
                                        "opcode": "variable_TE",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "2"
                                    },
                                    "param_2": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "2",
                                        "type": "10",
                                        "value": ""
                                    },
                                    "x": "1836",
                                    "y": "1210"
                                },
                                "opcode": "operator_logic",
                                "position": "0",
                                "type": "12"
                            },
                            "param_2": {
                                "item_0000000334": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000333": {
                                            "blocktype": 5,
                                            "opcode": "variable_TE",
                                            "varname": "TE",
                                            "x": "2094",
                                            "y": "1215"
                                        },
                                        "opcode": "variable_TE",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "param_2": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "2",
                                        "type": "10",
                                        "value": ""
                                    },
                                    "x": "2074",
                                    "y": "1210"
                                },
                                "opcode": "operator_logic",
                                "position": "2",
                                "type": "12"
                            },
                            "x": "1826",
                            "y": "1205"
                        },
                        "opcode": "operator_and",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000336": {
                            "disabled": "0",
                            "opcode": "data_setvariableto",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "17"
                            },
                            "param_3": {
                                "opcode": "CGraphicsTextItem",
                                "position": "3",
                                "type": "10",
                                "value": "0"
                            },
                            "x": "1815",
                            "y": "1270"
                        },
                        "type": "15"
                    },
                    "x": "1795",
                    "y": "1200"
                },
                "item_0000000344": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000342": {
                            "disabled": "0",
                            "opcode": "operator_and",
                            "param_0": {
                                "item_0000000339": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000338": {
                                            "blocktype": 5,
                                            "opcode": "variable_TE",
                                            "varname": "TE",
                                            "x": "1856",
                                            "y": "1365"
                                        },
                                        "opcode": "variable_TE",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "2"
                                    },
                                    "param_2": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "2",
                                        "type": "10",
                                        "value": ""
                                    },
                                    "x": "1836",
                                    "y": "1360"
                                },
                                "opcode": "operator_logic",
                                "position": "0",
                                "type": "12"
                            },
                            "param_2": {
                                "item_0000000341": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000340": {
                                            "blocktype": 5,
                                            "opcode": "variable_TE",
                                            "varname": "TE",
                                            "x": "2094",
                                            "y": "1365"
                                        },
                                        "opcode": "variable_TE",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "param_2": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "2",
                                        "type": "10",
                                        "value": ""
                                    },
                                    "x": "2074",
                                    "y": "1360"
                                },
                                "opcode": "operator_logic",
                                "position": "2",
                                "type": "12"
                            },
                            "x": "1826",
                            "y": "1355"
                        },
                        "opcode": "operator_and",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000343": {
                            "disabled": "0",
                            "opcode": "data_setvariableto",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "17"
                            },
                            "param_3": {
                                "opcode": "CGraphicsTextItem",
                                "position": "3",
                                "type": "10",
                                "value": "0"
                            },
                            "x": "1815",
                            "y": "1420"
                        },
                        "type": "15"
                    },
                    "x": "1795",
                    "y": "1350"
                },
                "type": "15"
            },
            "x": "1775",
            "y": "1000"
        }
    },
    "top_59": {
        "item_0000000358": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000347": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000346": {
                            "blocktype": 5,
                            "opcode": "variable_turns",
                            "varname": "turns",
                            "x": "1272",
                            "y": "2911"
                        },
                        "opcode": "variable_turns",
                        "position": "0",
                        "type": "10"
                    },
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "2"
                    },
                    "param_2": {
                        "opcode": "CGraphicsTextItem",
                        "position": "2",
                        "type": "10",
                        "value": "12"
                    },
                    "x": "1252",
                    "y": "2906"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000357": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000349": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000348": {
                                    "disabled": "0",
                                    "opcode": "sensing_gray",
                                    "param_0": {
                                        "position": "0",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "x": "1258",
                                    "y": "2971"
                                },
                                "opcode": "sensing_gray",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "1"
                            },
                            "param_2": {
                                "opcode": "CGraphicsTextItem",
                                "position": "2",
                                "type": "10",
                                "value": "70"
                            },
                            "x": "1238",
                            "y": "2966"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000350": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "55"
                            },
                            "x": "1227",
                            "y": "3021"
                        },
                        "item_0000000353": {
                            "disabled": "0",
                            "opcode": "control_waituntil",
                            "param_1": {
                                "item_0000000352": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000351": {
                                            "disabled": "0",
                                            "opcode": "sensing_gray",
                                            "param_0": {
                                                "position": "0",
                                                "type": "11",
                                                "value": "5"
                                            },
                                            "x": "1341",
                                            "y": "3081"
                                        },
                                        "opcode": "sensing_gray",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "param_2": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "2",
                                        "type": "10",
                                        "value": "70"
                                    },
                                    "x": "1321",
                                    "y": "3076"
                                },
                                "opcode": "operator_logic",
                                "position": "1",
                                "type": "12"
                            },
                            "x": "1227",
                            "y": "3071"
                        },
                        "item_0000000354": {
                            "disabled": "0",
                            "opcode": "control_wait",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "1"
                            },
                            "x": "1227",
                            "y": "3131"
                        },
                        "item_0000000355": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "95"
                            },
                            "x": "1227",
                            "y": "3181"
                        },
                        "item_0000000356": {
                            "disabled": "0",
                            "opcode": "data_changevariableby",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "8"
                            },
                            "param_3": {
                                "opcode": "CGraphicsTextItem",
                                "position": "3",
                                "type": "10",
                                "value": "1"
                            },
                            "x": "1227",
                            "y": "3231"
                        },
                        "type": "15"
                    },
                    "x": "1207",
                    "y": "2961"
                },
                "type": "15"
            },
            "x": "1187",
            "y": "2901"
        },
        "item_0000000363": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000360": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000359": {
                            "blocktype": 5,
                            "opcode": "variable_turns",
                            "varname": "turns",
                            "x": "1272",
                            "y": "3351"
                        },
                        "opcode": "variable_turns",
                        "position": "0",
                        "type": "10"
                    },
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "3"
                    },
                    "param_2": {
                        "opcode": "CGraphicsTextItem",
                        "position": "2",
                        "type": "10",
                        "value": "12"
                    },
                    "x": "1252",
                    "y": "3346"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000361": {
                    "disabled": "0",
                    "opcode": "MakerSteerin_Analogy",
                    "param_1": {
                        "opcode": "CGraphicsTextItem",
                        "position": "1",
                        "type": "10",
                        "value": "95"
                    },
                    "x": "1207",
                    "y": "3401"
                },
                "item_0000000362": {
                    "disabled": "0",
                    "opcode": "MakerMotion_OpenLoop",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "1"
                    },
                    "param_3": {
                        "opcode": "CGraphicsTextItem",
                        "position": "3",
                        "type": "10",
                        "value": "0"
                    },
                    "x": "1207",
                    "y": "3451"
                },
                "type": "15"
            },
            "x": "1187",
            "y": "3341"
        }
    },
    "top_6": {
        "item_0000000045": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "18"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "0"
            },
            "x": "3346",
            "y": "2219"
        }
    },
    "top_60": {
        "item_0000000365": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "13"
            },
            "param_3": {
                "item_0000000364": {
                    "disabled": "0",
                    "opcode": "MakerSensor_InfreadDistance",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "2"
                    },
                    "x": "1253",
                    "y": "599"
                },
                "opcode": "MakerSensor_InfreadDistance",
                "position": "3",
                "type": "10"
            },
            "x": "993",
            "y": "594"
        },
        "item_0000000367": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "14"
            },
            "param_3": {
                "item_0000000366": {
                    "disabled": "0",
                    "opcode": "MakerSensor_InfreadDistance",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "1"
                    },
                    "x": "1264",
                    "y": "649"
                },
                "opcode": "MakerSensor_InfreadDistance",
                "position": "3",
                "type": "10"
            },
            "x": "993",
            "y": "644"
        },
        "item_0000000368": {
            "disabled": "0",
            "opcode": "MakerMotion_OpenLoop",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "1"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "50"
            },
            "x": "993",
            "y": "694"
        },
        "item_0000000371": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000370": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000369": {
                            "blocktype": 5,
                            "opcode": "variable_turns",
                            "varname": "turns",
                            "x": "1078",
                            "y": "754"
                        },
                        "opcode": "variable_turns",
                        "position": "0",
                        "type": "10"
                    },
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "3"
                    },
                    "param_2": {
                        "opcode": "CGraphicsTextItem",
                        "position": "2",
                        "type": "10",
                        "value": "0"
                    },
                    "x": "1058",
                    "y": "749"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "x": "993",
            "y": "744"
        },
        "item_0000000394": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000373": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000372": {
                            "blocktype": 5,
                            "opcode": "variable_turns",
                            "varname": "turns",
                            "x": "1078",
                            "y": "874"
                        },
                        "opcode": "variable_turns",
                        "position": "0",
                        "type": "10"
                    },
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "3"
                    },
                    "param_2": {
                        "opcode": "CGraphicsTextItem",
                        "position": "2",
                        "type": "10",
                        "value": "11"
                    },
                    "x": "1058",
                    "y": "869"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000383": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000378": {
                            "disabled": "0",
                            "opcode": "operator_and",
                            "param_0": {
                                "item_0000000375": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000374": {
                                            "blocktype": 5,
                                            "opcode": "variable_OAProxyLeft",
                                            "varname": "OAProxyLeft",
                                            "x": "1074",
                                            "y": "939"
                                        },
                                        "opcode": "variable_OAProxyLeft",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "2"
                                    },
                                    "param_2": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "2",
                                        "type": "10",
                                        "value": ""
                                    },
                                    "x": "1054",
                                    "y": "934"
                                },
                                "opcode": "operator_logic",
                                "position": "0",
                                "type": "12"
                            },
                            "param_2": {
                                "item_0000000377": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000376": {
                                            "blocktype": 5,
                                            "opcode": "variable_OAProxyLeft",
                                            "varname": "OAProxyLeft",
                                            "x": "1387",
                                            "y": "939"
                                        },
                                        "opcode": "variable_OAProxyLeft",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "param_2": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "2",
                                        "type": "10",
                                        "value": ""
                                    },
                                    "x": "1367",
                                    "y": "934"
                                },
                                "opcode": "operator_logic",
                                "position": "2",
                                "type": "12"
                            },
                            "x": "1044",
                            "y": "929"
                        },
                        "opcode": "operator_and",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000382": {
                            "disabled": "0",
                            "opcode": "data_setvariableto",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "11"
                            },
                            "param_3": {
                                "item_0000000381": {
                                    "disabled": "0",
                                    "opcode": "operator_math",
                                    "param_0": {
                                        "item_0000000379": {
                                            "blocktype": 5,
                                            "opcode": "variable_IC",
                                            "varname": "IC",
                                            "x": "1243",
                                            "y": "1004"
                                        },
                                        "opcode": "variable_IC",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "2"
                                    },
                                    "param_2": {
                                        "item_0000000380": {
                                            "blocktype": 5,
                                            "opcode": "variable_DFC",
                                            "varname": "DFC",
                                            "x": "1349",
                                            "y": "1004"
                                        },
                                        "opcode": "variable_DFC",
                                        "position": "2",
                                        "type": "10"
                                    },
                                    "x": "1228",
                                    "y": "999"
                                },
                                "opcode": "operator_math",
                                "position": "3",
                                "type": "10"
                            },
                            "x": "1033",
                            "y": "994"
                        },
                        "type": "15"
                    },
                    "x": "1013",
                    "y": "924"
                },
                "item_0000000393": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000388": {
                            "disabled": "0",
                            "opcode": "operator_and",
                            "param_0": {
                                "item_0000000385": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000384": {
                                            "blocktype": 5,
                                            "opcode": "variable_OAProxyLeft",
                                            "varname": "OAProxyLeft",
                                            "x": "1074",
                                            "y": "1099"
                                        },
                                        "opcode": "variable_OAProxyLeft",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "2"
                                    },
                                    "param_2": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "2",
                                        "type": "10",
                                        "value": ""
                                    },
                                    "x": "1054",
                                    "y": "1094"
                                },
                                "opcode": "operator_logic",
                                "position": "0",
                                "type": "12"
                            },
                            "param_2": {
                                "item_0000000387": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000386": {
                                            "blocktype": 5,
                                            "opcode": "variable_OAProxyLeft",
                                            "varname": "OAProxyLeft",
                                            "x": "1387",
                                            "y": "1099"
                                        },
                                        "opcode": "variable_OAProxyLeft",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "param_2": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "2",
                                        "type": "10",
                                        "value": ""
                                    },
                                    "x": "1367",
                                    "y": "1094"
                                },
                                "opcode": "operator_logic",
                                "position": "2",
                                "type": "12"
                            },
                            "x": "1044",
                            "y": "1089"
                        },
                        "opcode": "operator_and",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000392": {
                            "disabled": "0",
                            "opcode": "data_setvariableto",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "11"
                            },
                            "param_3": {
                                "item_0000000391": {
                                    "disabled": "0",
                                    "opcode": "operator_math",
                                    "param_0": {
                                        "item_0000000389": {
                                            "blocktype": 5,
                                            "opcode": "variable_OC",
                                            "varname": "OC",
                                            "x": "1243",
                                            "y": "1164"
                                        },
                                        "opcode": "variable_OC",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "2"
                                    },
                                    "param_2": {
                                        "item_0000000390": {
                                            "blocktype": 5,
                                            "opcode": "variable_DFC",
                                            "varname": "DFC",
                                            "x": "1352",
                                            "y": "1164"
                                        },
                                        "opcode": "variable_DFC",
                                        "position": "2",
                                        "type": "10"
                                    },
                                    "x": "1228",
                                    "y": "1159"
                                },
                                "opcode": "operator_math",
                                "position": "3",
                                "type": "10"
                            },
                            "x": "1033",
                            "y": "1154"
                        },
                        "type": "15"
                    },
                    "x": "1013",
                    "y": "1084"
                },
                "type": "15"
            },
            "x": "993",
            "y": "864"
        },
        "item_0000000406": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000396": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000395": {
                            "blocktype": 5,
                            "opcode": "variable_turns",
                            "varname": "turns",
                            "x": "1078",
                            "y": "1284"
                        },
                        "opcode": "variable_turns",
                        "position": "0",
                        "type": "10"
                    },
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "3"
                    },
                    "param_2": {
                        "opcode": "CGraphicsTextItem",
                        "position": "2",
                        "type": "10",
                        "value": "12"
                    },
                    "x": "1058",
                    "y": "1279"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000405": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000398": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000397": {
                                    "disabled": "0",
                                    "opcode": "sensing_gray",
                                    "param_0": {
                                        "position": "0",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "x": "1064",
                                    "y": "1344"
                                },
                                "opcode": "sensing_gray",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "1"
                            },
                            "param_2": {
                                "opcode": "CGraphicsTextItem",
                                "position": "2",
                                "type": "10",
                                "value": "70"
                            },
                            "x": "1044",
                            "y": "1339"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000399": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "135"
                            },
                            "x": "1033",
                            "y": "1394"
                        },
                        "item_0000000402": {
                            "disabled": "0",
                            "opcode": "control_waituntil",
                            "param_1": {
                                "item_0000000401": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000400": {
                                            "disabled": "0",
                                            "opcode": "sensing_gray",
                                            "param_0": {
                                                "position": "0",
                                                "type": "11",
                                                "value": "1"
                                            },
                                            "x": "1147",
                                            "y": "1454"
                                        },
                                        "opcode": "sensing_gray",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "param_2": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "2",
                                        "type": "10",
                                        "value": "70"
                                    },
                                    "x": "1127",
                                    "y": "1449"
                                },
                                "opcode": "operator_logic",
                                "position": "1",
                                "type": "12"
                            },
                            "x": "1033",
                            "y": "1444"
                        },
                        "item_0000000403": {
                            "disabled": "0",
                            "opcode": "control_wait",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "0.5"
                            },
                            "x": "1033",
                            "y": "1504"
                        },
                        "item_0000000404": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "95"
                            },
                            "x": "1033",
                            "y": "1554"
                        },
                        "type": "15"
                    },
                    "x": "1013",
                    "y": "1334"
                },
                "type": "15"
            },
            "x": "993",
            "y": "1274"
        },
        "item_0000000407": {
            "disabled": "0",
            "opcode": "control_wait",
            "param_1": {
                "opcode": "CGraphicsTextItem",
                "position": "1",
                "type": "10",
                "value": "0.2"
            },
            "x": "993",
            "y": "1664"
        },
        "item_0000000408": {
            "disabled": "0",
            "opcode": "data_changevariableby",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "12"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "0.2"
            },
            "x": "993",
            "y": "1714"
        }
    },
    "top_61": {
        "item_0000000409": {
            "blocktype": 5,
            "opcode": "variable_turns",
            "varname": "turns",
            "x": "3485",
            "y": "2145"
        }
    },
    "top_62": {
        "item_0000000410": {
            "blocktype": 5,
            "opcode": "variable_DLC",
            "varname": "DLC",
            "x": "3865",
            "y": "88"
        }
    },
    "top_63": {
        "item_0000000411": {
            "disabled": "0",
            "opcode": "function_4",
            "x": "5922",
            "y": "12"
        }
    },
    "top_64": {
        "item_0000000424": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000413": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000412": {
                            "blocktype": 5,
                            "opcode": "variable_turns",
                            "varname": "turns",
                            "x": "1082",
                            "y": "80"
                        },
                        "opcode": "variable_turns",
                        "position": "0",
                        "type": "10"
                    },
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "4"
                    },
                    "param_2": {
                        "opcode": "CGraphicsTextItem",
                        "position": "2",
                        "type": "10",
                        "value": "11"
                    },
                    "x": "1062",
                    "y": "75"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000423": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000415": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000414": {
                                    "disabled": "0",
                                    "opcode": "sensing_gray",
                                    "param_0": {
                                        "position": "0",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "x": "1068",
                                    "y": "140"
                                },
                                "opcode": "sensing_gray",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "1"
                            },
                            "param_2": {
                                "opcode": "CGraphicsTextItem",
                                "position": "2",
                                "type": "10",
                                "value": "70"
                            },
                            "x": "1048",
                            "y": "135"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000416": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "135"
                            },
                            "x": "1037",
                            "y": "190"
                        },
                        "item_0000000419": {
                            "disabled": "0",
                            "opcode": "control_waituntil",
                            "param_1": {
                                "item_0000000418": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000417": {
                                            "disabled": "0",
                                            "opcode": "sensing_gray",
                                            "param_0": {
                                                "position": "0",
                                                "type": "11",
                                                "value": "1"
                                            },
                                            "x": "1151",
                                            "y": "250"
                                        },
                                        "opcode": "sensing_gray",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "param_2": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "2",
                                        "type": "10",
                                        "value": "70"
                                    },
                                    "x": "1131",
                                    "y": "245"
                                },
                                "opcode": "operator_logic",
                                "position": "1",
                                "type": "12"
                            },
                            "x": "1037",
                            "y": "240"
                        },
                        "item_0000000420": {
                            "disabled": "0",
                            "opcode": "control_wait",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "0.5"
                            },
                            "x": "1037",
                            "y": "300"
                        },
                        "item_0000000421": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "95"
                            },
                            "x": "1037",
                            "y": "350"
                        },
                        "item_0000000422": {
                            "disabled": "0",
                            "opcode": "data_changevariableby",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "8"
                            },
                            "param_3": {
                                "opcode": "CGraphicsTextItem",
                                "position": "3",
                                "type": "10",
                                "value": "1"
                            },
                            "x": "1037",
                            "y": "400"
                        },
                        "type": "15"
                    },
                    "x": "1017",
                    "y": "130"
                },
                "type": "15"
            },
            "x": "997",
            "y": "70"
        }
    },
    "top_65": {
        "item_0000000453": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000426": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000425": {
                            "blocktype": 5,
                            "opcode": "variable_turns",
                            "varname": "turns",
                            "x": "2615",
                            "y": "2529"
                        },
                        "opcode": "variable_turns",
                        "position": "0",
                        "type": "10"
                    },
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "4"
                    },
                    "param_2": {
                        "opcode": "CGraphicsTextItem",
                        "position": "2",
                        "type": "10",
                        "value": "11"
                    },
                    "x": "2595",
                    "y": "2524"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000452": {
                    "disabled": "0",
                    "opcode": "control_ifelse",
                    "param_1": {
                        "item_0000000428": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000427": {
                                    "blocktype": 5,
                                    "opcode": "variable_checkdistance",
                                    "varname": "checkdistance",
                                    "x": "2601",
                                    "y": "2589"
                                },
                                "opcode": "variable_checkdistance",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "3"
                            },
                            "param_2": {
                                "opcode": "CGraphicsTextItem",
                                "position": "2",
                                "type": "10",
                                "value": "2"
                            },
                            "x": "2581",
                            "y": "2584"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000440": {
                            "disabled": "0",
                            "opcode": "control_if",
                            "param_1": {
                                "item_0000000430": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000429": {
                                            "disabled": "0",
                                            "opcode": "sensing_gray",
                                            "param_0": {
                                                "position": "0",
                                                "type": "11",
                                                "value": "1"
                                            },
                                            "x": "2621",
                                            "y": "2649"
                                        },
                                        "opcode": "sensing_gray",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "param_2": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "2",
                                        "type": "10",
                                        "value": "70"
                                    },
                                    "x": "2601",
                                    "y": "2644"
                                },
                                "opcode": "operator_logic",
                                "position": "1",
                                "type": "12"
                            },
                            "substack1": {
                                "item_0000000431": {
                                    "disabled": "0",
                                    "opcode": "MakerSteerin_Analogy",
                                    "param_1": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "1",
                                        "type": "10",
                                        "value": "135"
                                    },
                                    "x": "2590",
                                    "y": "2699"
                                },
                                "item_0000000432": {
                                    "disabled": "0",
                                    "opcode": "data_setvariableto",
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "18"
                                    },
                                    "param_3": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "3",
                                        "type": "10",
                                        "value": "3"
                                    },
                                    "x": "2590",
                                    "y": "2749"
                                },
                                "item_0000000435": {
                                    "disabled": "0",
                                    "opcode": "control_waituntil",
                                    "param_1": {
                                        "item_0000000434": {
                                            "disabled": "0",
                                            "opcode": "operator_logic",
                                            "param_0": {
                                                "item_0000000433": {
                                                    "disabled": "0",
                                                    "opcode": "sensing_gray",
                                                    "param_0": {
                                                        "position": "0",
                                                        "type": "11",
                                                        "value": "1"
                                                    },
                                                    "x": "2704",
                                                    "y": "2809"
                                                },
                                                "opcode": "sensing_gray",
                                                "position": "0",
                                                "type": "10"
                                            },
                                            "param_1": {
                                                "position": "1",
                                                "type": "11",
                                                "value": "1"
                                            },
                                            "param_2": {
                                                "opcode": "CGraphicsTextItem",
                                                "position": "2",
                                                "type": "10",
                                                "value": "70"
                                            },
                                            "x": "2684",
                                            "y": "2804"
                                        },
                                        "opcode": "operator_logic",
                                        "position": "1",
                                        "type": "12"
                                    },
                                    "x": "2590",
                                    "y": "2799"
                                },
                                "item_0000000436": {
                                    "disabled": "0",
                                    "opcode": "control_wait",
                                    "param_1": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "1",
                                        "type": "10",
                                        "value": "0.2"
                                    },
                                    "x": "2590",
                                    "y": "2859"
                                },
                                "item_0000000437": {
                                    "disabled": "0",
                                    "opcode": "MakerSteerin_Analogy",
                                    "param_1": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "1",
                                        "type": "10",
                                        "value": "95"
                                    },
                                    "x": "2590",
                                    "y": "2909"
                                },
                                "item_0000000438": {
                                    "disabled": "0",
                                    "opcode": "data_setvariableto",
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "18"
                                    },
                                    "param_3": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "3",
                                        "type": "10",
                                        "value": "0"
                                    },
                                    "x": "2590",
                                    "y": "2959"
                                },
                                "item_0000000439": {
                                    "disabled": "0",
                                    "opcode": "data_changevariableby",
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "8"
                                    },
                                    "param_3": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "3",
                                        "type": "10",
                                        "value": "1"
                                    },
                                    "x": "2590",
                                    "y": "3009"
                                },
                                "type": "15"
                            },
                            "x": "2570",
                            "y": "2639"
                        },
                        "type": "15"
                    },
                    "substack2": {
                        "item_0000000451": {
                            "disabled": "0",
                            "opcode": "control_if",
                            "param_1": {
                                "item_0000000442": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000441": {
                                            "disabled": "0",
                                            "opcode": "sensing_gray",
                                            "param_0": {
                                                "position": "0",
                                                "type": "11",
                                                "value": "1"
                                            },
                                            "x": "2621",
                                            "y": "3129"
                                        },
                                        "opcode": "sensing_gray",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "param_2": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "2",
                                        "type": "10",
                                        "value": "70"
                                    },
                                    "x": "2601",
                                    "y": "3124"
                                },
                                "opcode": "operator_logic",
                                "position": "1",
                                "type": "12"
                            },
                            "substack1": {
                                "item_0000000443": {
                                    "disabled": "0",
                                    "opcode": "MakerSteerin_Analogy",
                                    "param_1": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "1",
                                        "type": "10",
                                        "value": "135"
                                    },
                                    "x": "2590",
                                    "y": "3179"
                                },
                                "item_0000000446": {
                                    "disabled": "0",
                                    "opcode": "control_waituntil",
                                    "param_1": {
                                        "item_0000000445": {
                                            "disabled": "0",
                                            "opcode": "operator_logic",
                                            "param_0": {
                                                "item_0000000444": {
                                                    "disabled": "0",
                                                    "opcode": "sensing_gray",
                                                    "param_0": {
                                                        "position": "0",
                                                        "type": "11",
                                                        "value": "1"
                                                    },
                                                    "x": "2704",
                                                    "y": "3239"
                                                },
                                                "opcode": "sensing_gray",
                                                "position": "0",
                                                "type": "10"
                                            },
                                            "param_1": {
                                                "position": "1",
                                                "type": "11",
                                                "value": "1"
                                            },
                                            "param_2": {
                                                "opcode": "CGraphicsTextItem",
                                                "position": "2",
                                                "type": "10",
                                                "value": "70"
                                            },
                                            "x": "2684",
                                            "y": "3234"
                                        },
                                        "opcode": "operator_logic",
                                        "position": "1",
                                        "type": "12"
                                    },
                                    "x": "2590",
                                    "y": "3229"
                                },
                                "item_0000000447": {
                                    "disabled": "0",
                                    "opcode": "control_wait",
                                    "param_1": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "1",
                                        "type": "10",
                                        "value": "0.2"
                                    },
                                    "x": "2590",
                                    "y": "3289"
                                },
                                "item_0000000448": {
                                    "disabled": "0",
                                    "opcode": "MakerSteerin_Analogy",
                                    "param_1": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "1",
                                        "type": "10",
                                        "value": "95"
                                    },
                                    "x": "2590",
                                    "y": "3339"
                                },
                                "item_0000000449": {
                                    "disabled": "0",
                                    "opcode": "data_changevariableby",
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "8"
                                    },
                                    "param_3": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "3",
                                        "type": "10",
                                        "value": "1"
                                    },
                                    "x": "2590",
                                    "y": "3389"
                                },
                                "item_0000000450": {
                                    "disabled": "0",
                                    "opcode": "data_changevariableby",
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "18"
                                    },
                                    "param_3": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "3",
                                        "type": "10",
                                        "value": "1"
                                    },
                                    "x": "2590",
                                    "y": "3439"
                                },
                                "type": "15"
                            },
                            "x": "2570",
                            "y": "3119"
                        },
                        "type": "16"
                    },
                    "x": "2550",
                    "y": "2579"
                },
                "type": "15"
            },
            "x": "2530",
            "y": "2519"
        }
    },
    "top_66": {
        "item_0000000454": {
            "disabled": "0",
            "opcode": "function_4",
            "x": "3021",
            "y": "1123"
        }
    },
    "top_67": {
        "item_0000000456": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000455": {
                    "disabled": "0",
                    "opcode": "empty",
                    "x": "3830",
                    "y": "2039"
                },
                "opcode": "empty",
                "position": "1",
                "type": "12"
            },
            "x": "3765",
            "y": "2029"
        }
    },
    "top_68": {
        "item_0000000458": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000457": {
                    "disabled": "0",
                    "opcode": "empty",
                    "x": "3802",
                    "y": "2181"
                },
                "opcode": "empty",
                "position": "1",
                "type": "12"
            },
            "x": "3737",
            "y": "2171"
        }
    },
    "top_69": {
        "item_0000000471": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000460": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000459": {
                            "blocktype": 5,
                            "opcode": "variable_turns",
                            "varname": "turns",
                            "x": "3543",
                            "y": "1008"
                        },
                        "opcode": "variable_turns",
                        "position": "0",
                        "type": "10"
                    },
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "4"
                    },
                    "param_2": {
                        "opcode": "CGraphicsTextItem",
                        "position": "2",
                        "type": "10",
                        "value": "11"
                    },
                    "x": "3523",
                    "y": "1003"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000470": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000462": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000461": {
                                    "disabled": "0",
                                    "opcode": "sensing_gray",
                                    "param_0": {
                                        "position": "0",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "x": "3529",
                                    "y": "1068"
                                },
                                "opcode": "sensing_gray",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "1"
                            },
                            "param_2": {
                                "opcode": "CGraphicsTextItem",
                                "position": "2",
                                "type": "10",
                                "value": "70"
                            },
                            "x": "3509",
                            "y": "1063"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000463": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "135"
                            },
                            "x": "3498",
                            "y": "1118"
                        },
                        "item_0000000466": {
                            "disabled": "0",
                            "opcode": "control_waituntil",
                            "param_1": {
                                "item_0000000465": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000464": {
                                            "disabled": "0",
                                            "opcode": "sensing_gray",
                                            "param_0": {
                                                "position": "0",
                                                "type": "11",
                                                "value": "1"
                                            },
                                            "x": "3612",
                                            "y": "1178"
                                        },
                                        "opcode": "sensing_gray",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "param_2": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "2",
                                        "type": "10",
                                        "value": "70"
                                    },
                                    "x": "3592",
                                    "y": "1173"
                                },
                                "opcode": "operator_logic",
                                "position": "1",
                                "type": "12"
                            },
                            "x": "3498",
                            "y": "1168"
                        },
                        "item_0000000467": {
                            "disabled": "0",
                            "opcode": "control_wait",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "0.5"
                            },
                            "x": "3498",
                            "y": "1228"
                        },
                        "item_0000000468": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "95"
                            },
                            "x": "3498",
                            "y": "1278"
                        },
                        "item_0000000469": {
                            "disabled": "0",
                            "opcode": "data_changevariableby",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "8"
                            },
                            "param_3": {
                                "opcode": "CGraphicsTextItem",
                                "position": "3",
                                "type": "10",
                                "value": "1"
                            },
                            "x": "3498",
                            "y": "1328"
                        },
                        "type": "15"
                    },
                    "x": "3478",
                    "y": "1058"
                },
                "type": "15"
            },
            "x": "3458",
            "y": "998"
        }
    },
    "top_7": {
        "item_0000000046": {
            "disabled": "0",
            "opcode": "data_changevariableby",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "18"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "1"
            },
            "x": "3386",
            "y": "2367"
        }
    },
    "top_70": {
        "item_0000000472": {
            "disabled": "0",
            "opcode": "data_changevariableby",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "1"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": ""
            },
            "x": "3096",
            "y": "2079"
        }
    },
    "top_71": {
        "item_0000000482": {
            "disabled": "0",
            "opcode": "control_if",
            "param_1": {
                "item_0000000474": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000473": {
                            "disabled": "0",
                            "opcode": "sensing_gray",
                            "param_0": {
                                "position": "0",
                                "type": "11",
                                "value": "1"
                            },
                            "x": "3620",
                            "y": "1609"
                        },
                        "opcode": "sensing_gray",
                        "position": "0",
                        "type": "10"
                    },
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "1"
                    },
                    "param_2": {
                        "opcode": "CGraphicsTextItem",
                        "position": "2",
                        "type": "10",
                        "value": "70"
                    },
                    "x": "3600",
                    "y": "1604"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000475": {
                    "disabled": "0",
                    "opcode": "MakerSteerin_Analogy",
                    "param_1": {
                        "opcode": "CGraphicsTextItem",
                        "position": "1",
                        "type": "10",
                        "value": "135"
                    },
                    "x": "3589",
                    "y": "1659"
                },
                "item_0000000478": {
                    "disabled": "0",
                    "opcode": "control_waituntil",
                    "param_1": {
                        "item_0000000477": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000476": {
                                    "disabled": "0",
                                    "opcode": "sensing_gray",
                                    "param_0": {
                                        "position": "0",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "x": "3703",
                                    "y": "1719"
                                },
                                "opcode": "sensing_gray",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "1"
                            },
                            "param_2": {
                                "opcode": "CGraphicsTextItem",
                                "position": "2",
                                "type": "10",
                                "value": "70"
                            },
                            "x": "3683",
                            "y": "1714"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "x": "3589",
                    "y": "1709"
                },
                "item_0000000479": {
                    "disabled": "0",
                    "opcode": "control_wait",
                    "param_1": {
                        "opcode": "CGraphicsTextItem",
                        "position": "1",
                        "type": "10",
                        "value": "0.5"
                    },
                    "x": "3589",
                    "y": "1769"
                },
                "item_0000000480": {
                    "disabled": "0",
                    "opcode": "MakerSteerin_Analogy",
                    "param_1": {
                        "opcode": "CGraphicsTextItem",
                        "position": "1",
                        "type": "10",
                        "value": "95"
                    },
                    "x": "3589",
                    "y": "1819"
                },
                "item_0000000481": {
                    "disabled": "0",
                    "opcode": "data_changevariableby",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "8"
                    },
                    "param_3": {
                        "opcode": "CGraphicsTextItem",
                        "position": "3",
                        "type": "10",
                        "value": "1"
                    },
                    "x": "3589",
                    "y": "1869"
                },
                "type": "15"
            },
            "x": "3569",
            "y": "1599"
        }
    },
    "top_72": {
        "item_0000000483": {
            "disabled": "0",
            "opcode": "main",
            "x": "5000",
            "y": "0"
        },
        "item_0000000484": {
            "disabled": "0",
            "opcode": "MakerSteerin_Analogy",
            "param_1": {
                "opcode": "CGraphicsTextItem",
                "position": "1",
                "type": "10",
                "value": "95"
            },
            "x": "5000",
            "y": "55"
        },
        "item_0000000485": {
            "disabled": "0",
            "opcode": "MakerMotion_OpenLoop",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "1"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "60"
            },
            "x": "5000",
            "y": "105"
        },
        "item_0000000486": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "8"
            },
            "param_3": {
                "opcode": "CGraphicsTextItem",
                "position": "3",
                "type": "10",
                "value": "0"
            },
            "x": "5000",
            "y": "155"
        },
        "item_0000000509": {
            "disabled": "0",
            "opcode": "control_forever",
            "substack1": {
                "item_0000000497": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000488": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000487": {
                                    "disabled": "0",
                                    "opcode": "MakerSensor_InfreadDistance",
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "2"
                                    },
                                    "x": "5071",
                                    "y": "265"
                                },
                                "opcode": "MakerSensor_InfreadDistance",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "1"
                            },
                            "param_2": {
                                "opcode": "CGraphicsTextItem",
                                "position": "2",
                                "type": "10",
                                "value": "45"
                            },
                            "x": "5051",
                            "y": "260"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000489": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "80"
                            },
                            "x": "5040",
                            "y": "315"
                        },
                        "item_0000000495": {
                            "disabled": "0",
                            "opcode": "control_waituntil",
                            "param_1": {
                                "item_0000000494": {
                                    "disabled": "0",
                                    "opcode": "operator_and",
                                    "param_0": {
                                        "item_0000000491": {
                                            "disabled": "0",
                                            "opcode": "operator_logic",
                                            "param_0": {
                                                "item_0000000490": {
                                                    "disabled": "0",
                                                    "opcode": "MakerSensor_InfreadDistance",
                                                    "param_1": {
                                                        "position": "1",
                                                        "type": "11",
                                                        "value": "2"
                                                    },
                                                    "x": "5164",
                                                    "y": "380"
                                                },
                                                "opcode": "MakerSensor_InfreadDistance",
                                                "position": "0",
                                                "type": "10"
                                            },
                                            "param_1": {
                                                "position": "1",
                                                "type": "11",
                                                "value": "2"
                                            },
                                            "param_2": {
                                                "opcode": "CGraphicsTextItem",
                                                "position": "2",
                                                "type": "10",
                                                "value": "55"
                                            },
                                            "x": "5144",
                                            "y": "375"
                                        },
                                        "opcode": "operator_logic",
                                        "position": "0",
                                        "type": "12"
                                    },
                                    "param_2": {
                                        "item_0000000493": {
                                            "disabled": "0",
                                            "opcode": "operator_logic",
                                            "param_0": {
                                                "item_0000000492": {
                                                    "disabled": "0",
                                                    "opcode": "MakerSensor_InfreadDistance",
                                                    "param_1": {
                                                        "position": "1",
                                                        "type": "11",
                                                        "value": "2"
                                                    },
                                                    "x": "5696",
                                                    "y": "380"
                                                },
                                                "opcode": "MakerSensor_InfreadDistance",
                                                "position": "0",
                                                "type": "10"
                                            },
                                            "param_1": {
                                                "position": "1",
                                                "type": "11",
                                                "value": "1"
                                            },
                                            "param_2": {
                                                "opcode": "CGraphicsTextItem",
                                                "position": "2",
                                                "type": "10",
                                                "value": "50"
                                            },
                                            "x": "5676",
                                            "y": "375"
                                        },
                                        "opcode": "operator_logic",
                                        "position": "2",
                                        "type": "12"
                                    },
                                    "x": "5134",
                                    "y": "370"
                                },
                                "opcode": "operator_and",
                                "position": "1",
                                "type": "12"
                            },
                            "x": "5040",
                            "y": "365"
                        },
                        "item_0000000496": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "95"
                            },
                            "x": "5040",
                            "y": "435"
                        },
                        "type": "15"
                    },
                    "x": "5020",
                    "y": "255"
                },
                "item_0000000508": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000499": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000498": {
                                    "disabled": "0",
                                    "opcode": "MakerSensor_InfreadDistance",
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "2"
                                    },
                                    "x": "5071",
                                    "y": "525"
                                },
                                "opcode": "MakerSensor_InfreadDistance",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "2"
                            },
                            "param_2": {
                                "opcode": "CGraphicsTextItem",
                                "position": "2",
                                "type": "10",
                                "value": "60"
                            },
                            "x": "5051",
                            "y": "520"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000500": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "120"
                            },
                            "x": "5040",
                            "y": "575"
                        },
                        "item_0000000506": {
                            "disabled": "0",
                            "opcode": "control_waituntil",
                            "param_1": {
                                "item_0000000505": {
                                    "disabled": "0",
                                    "opcode": "operator_and",
                                    "param_0": {
                                        "item_0000000502": {
                                            "disabled": "0",
                                            "opcode": "operator_logic",
                                            "param_0": {
                                                "item_0000000501": {
                                                    "disabled": "0",
                                                    "opcode": "MakerSensor_InfreadDistance",
                                                    "param_1": {
                                                        "position": "1",
                                                        "type": "11",
                                                        "value": "2"
                                                    },
                                                    "x": "5164",
                                                    "y": "640"
                                                },
                                                "opcode": "MakerSensor_InfreadDistance",
                                                "position": "0",
                                                "type": "10"
                                            },
                                            "param_1": {
                                                "position": "1",
                                                "type": "11",
                                                "value": "2"
                                            },
                                            "param_2": {
                                                "opcode": "CGraphicsTextItem",
                                                "position": "2",
                                                "type": "10",
                                                "value": "55"
                                            },
                                            "x": "5144",
                                            "y": "635"
                                        },
                                        "opcode": "operator_logic",
                                        "position": "0",
                                        "type": "12"
                                    },
                                    "param_2": {
                                        "item_0000000504": {
                                            "disabled": "0",
                                            "opcode": "operator_logic",
                                            "param_0": {
                                                "item_0000000503": {
                                                    "disabled": "0",
                                                    "opcode": "MakerSensor_InfreadDistance",
                                                    "param_1": {
                                                        "position": "1",
                                                        "type": "11",
                                                        "value": "2"
                                                    },
                                                    "x": "5696",
                                                    "y": "640"
                                                },
                                                "opcode": "MakerSensor_InfreadDistance",
                                                "position": "0",
                                                "type": "10"
                                            },
                                            "param_1": {
                                                "position": "1",
                                                "type": "11",
                                                "value": "1"
                                            },
                                            "param_2": {
                                                "opcode": "CGraphicsTextItem",
                                                "position": "2",
                                                "type": "10",
                                                "value": "50"
                                            },
                                            "x": "5676",
                                            "y": "635"
                                        },
                                        "opcode": "operator_logic",
                                        "position": "2",
                                        "type": "12"
                                    },
                                    "x": "5134",
                                    "y": "630"
                                },
                                "opcode": "operator_and",
                                "position": "1",
                                "type": "12"
                            },
                            "x": "5040",
                            "y": "625"
                        },
                        "item_0000000507": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "95"
                            },
                            "x": "5040",
                            "y": "695"
                        },
                        "type": "15"
                    },
                    "x": "5020",
                    "y": "515"
                },
                "type": "15"
            },
            "x": "5000",
            "y": "205"
        }
    },
    "top_8": {
        "item_0000000047": {
            "blocktype": 5,
            "opcode": "variable_DFC",
            "varname": "DFC",
            "x": "3924",
            "y": "90"
        }
    },
    "top_9": {
        "item_0000000048": {
            "blocktype": 5,
            "opcode": "variable_turns",
            "varname": "turns",
            "x": "3990",
            "y": "132"
        }
    },
    "varList": [
        "A",
        "B",
        "a",
        "b",
        "oaval",
        "oavalcm",
        "sensorstate",
        "turns",
        "IC",
        "OC",
        "DLC",
        "DFC",
        "OAProxyLeft",
        "OAProxyRight",
        "PFC",
        "CD",
        "TE",
        "checkdistance",
        "distance"
    ]
}
