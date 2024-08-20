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
            "text": " Left        Center     Right\n  155\t   95\t 35\n  125\t  95\t 65\n  135\t   95 \t 55",
            "x": "4333.33",
            "y": "683.333"
        },
        "note_1": {
            "text": "A = OA min\nB = OA max\na = new min\nb = new max",
            "x": "4086.67",
            "y": "238.333"
        },
        "note_10": {
            "text": "check if sensor is active\n\nif active\n- if sensor 1 triggered\n- activate sequence 1\n- set sensor not active\n\n- if sensor 2 triggered\n- activate sequence 2\n- set sensor not active",
            "x": "4758.33",
            "y": "453.333"
        },
        "note_11": {
            "text": "Initialize Variables",
            "x": "3482.67",
            "y": "404"
        },
        "note_12": {
            "text": "Stop at FInish Line",
            "x": "3210",
            "y": "20"
        },
        "note_2": {
            "text": "Proximity from Center Reader",
            "x": "1398.33",
            "y": "726.667"
        },
        "note_3": {
            "text": "Identifier",
            "x": "2333.33",
            "y": "26.6667"
        },
        "note_4": {
            "text": "Looping Code",
            "x": "1613.33",
            "y": "71.6667"
        },
        "note_5": {
            "text": "OA Auto Correct\nClockwise",
            "x": "711.667",
            "y": "605"
        },
        "note_6": {
            "text": "OA Auto Correct CounterClockwise",
            "x": "700",
            "y": "68.3333"
        },
        "note_7": {
            "text": "Circumference Codes\n\n1 = ICD\n2 = OCD",
            "x": "4096.67",
            "y": "381.667"
        },
        "note_8": {
            "text": "Sensor ports\n\nOA Right = A1\nOA Left = A2\nOA Rear = A3\nRGB = A4\nGrayscale - A5",
            "x": "4763.33",
            "y": "741.667"
        },
        "note_9": {
            "text": "When turns not = 12\nrepeat \nif corner detected\n- sequence\n- turn +1\n\nif distance > x\n- sequence to move closer\n\nif distance < x\n- sequence to move farther",
            "x": "4086.9",
            "y": "520.952"
        }
    },
    "top_0": {
        "item_0000000000": {
            "blocktype": 5,
            "opcode": "variable_PFC",
            "varname": "PFC",
            "x": "3806",
            "y": "92"
        }
    },
    "top_1": {
        "item_0000000013": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000002": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000001": {
                            "blocktype": 5,
                            "opcode": "variable_turns",
                            "varname": "turns",
                            "x": "5288",
                            "y": "909"
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
                    "x": "5268",
                    "y": "904"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000012": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000004": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000003": {
                                    "disabled": "0",
                                    "opcode": "sensing_gray",
                                    "param_0": {
                                        "position": "0",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "x": "5274",
                                    "y": "969"
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
                            "x": "5254",
                            "y": "964"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000005": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "55"
                            },
                            "x": "5243",
                            "y": "1019"
                        },
                        "item_0000000008": {
                            "disabled": "0",
                            "opcode": "control_waituntil",
                            "param_1": {
                                "item_0000000007": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000006": {
                                            "disabled": "0",
                                            "opcode": "sensing_gray",
                                            "param_0": {
                                                "position": "0",
                                                "type": "11",
                                                "value": "5"
                                            },
                                            "x": "5357",
                                            "y": "1079"
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
                                    "x": "5337",
                                    "y": "1074"
                                },
                                "opcode": "operator_logic",
                                "position": "1",
                                "type": "12"
                            },
                            "x": "5243",
                            "y": "1069"
                        },
                        "item_0000000009": {
                            "disabled": "0",
                            "opcode": "control_wait",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "1"
                            },
                            "x": "5243",
                            "y": "1129"
                        },
                        "item_0000000010": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "95"
                            },
                            "x": "5243",
                            "y": "1179"
                        },
                        "item_0000000011": {
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
                            "x": "5243",
                            "y": "1229"
                        },
                        "type": "15"
                    },
                    "x": "5223",
                    "y": "959"
                },
                "type": "15"
            },
            "x": "5203",
            "y": "899"
        },
        "item_0000000018": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000015": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000014": {
                            "blocktype": 5,
                            "opcode": "variable_turns",
                            "varname": "turns",
                            "x": "5288",
                            "y": "1349"
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
                    "x": "5268",
                    "y": "1344"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000016": {
                    "disabled": "0",
                    "opcode": "MakerSteerin_Analogy",
                    "param_1": {
                        "opcode": "CGraphicsTextItem",
                        "position": "1",
                        "type": "10",
                        "value": "95"
                    },
                    "x": "5223",
                    "y": "1399"
                },
                "item_0000000017": {
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
                    "x": "5223",
                    "y": "1449"
                },
                "type": "15"
            },
            "x": "5203",
            "y": "1339"
        }
    },
    "top_10": {
        "item_0000000078": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "13"
            },
            "param_3": {
                "item_0000000077": {
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
        "item_0000000080": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "14"
            },
            "param_3": {
                "item_0000000079": {
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
        "item_0000000081": {
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
        "item_0000000086": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000083": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000082": {
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
            "substack1": {
                "item_0000000084": {
                    "disabled": "0",
                    "opcode": "control_wait",
                    "param_1": {
                        "opcode": "CGraphicsTextItem",
                        "position": "1",
                        "type": "10",
                        "value": "0.2"
                    },
                    "x": "1013",
                    "y": "804"
                },
                "item_0000000085": {
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
                    "x": "1013",
                    "y": "854"
                },
                "type": "15"
            },
            "x": "993",
            "y": "744"
        },
        "item_0000000109": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000088": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000087": {
                            "blocktype": 5,
                            "opcode": "variable_turns",
                            "varname": "turns",
                            "x": "1078",
                            "y": "944"
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
                    "y": "939"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000098": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000093": {
                            "disabled": "0",
                            "opcode": "operator_and",
                            "param_0": {
                                "item_0000000090": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000089": {
                                            "blocktype": 5,
                                            "opcode": "variable_OAProxyLeft",
                                            "varname": "OAProxyLeft",
                                            "x": "1074",
                                            "y": "1009"
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
                                    "y": "1004"
                                },
                                "opcode": "operator_logic",
                                "position": "0",
                                "type": "12"
                            },
                            "param_2": {
                                "item_0000000092": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000091": {
                                            "blocktype": 5,
                                            "opcode": "variable_OAProxyLeft",
                                            "varname": "OAProxyLeft",
                                            "x": "1387",
                                            "y": "1009"
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
                                    "y": "1004"
                                },
                                "opcode": "operator_logic",
                                "position": "2",
                                "type": "12"
                            },
                            "x": "1044",
                            "y": "999"
                        },
                        "opcode": "operator_and",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000097": {
                            "disabled": "0",
                            "opcode": "data_setvariableto",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "11"
                            },
                            "param_3": {
                                "item_0000000096": {
                                    "disabled": "0",
                                    "opcode": "operator_math",
                                    "param_0": {
                                        "item_0000000094": {
                                            "blocktype": 5,
                                            "opcode": "variable_IC",
                                            "varname": "IC",
                                            "x": "1243",
                                            "y": "1074"
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
                                        "item_0000000095": {
                                            "blocktype": 5,
                                            "opcode": "variable_DFC",
                                            "varname": "DFC",
                                            "x": "1349",
                                            "y": "1074"
                                        },
                                        "opcode": "variable_DFC",
                                        "position": "2",
                                        "type": "10"
                                    },
                                    "x": "1228",
                                    "y": "1069"
                                },
                                "opcode": "operator_math",
                                "position": "3",
                                "type": "10"
                            },
                            "x": "1033",
                            "y": "1064"
                        },
                        "type": "15"
                    },
                    "x": "1013",
                    "y": "994"
                },
                "item_0000000108": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000103": {
                            "disabled": "0",
                            "opcode": "operator_and",
                            "param_0": {
                                "item_0000000100": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000099": {
                                            "blocktype": 5,
                                            "opcode": "variable_OAProxyLeft",
                                            "varname": "OAProxyLeft",
                                            "x": "1074",
                                            "y": "1169"
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
                                    "y": "1164"
                                },
                                "opcode": "operator_logic",
                                "position": "0",
                                "type": "12"
                            },
                            "param_2": {
                                "item_0000000102": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000101": {
                                            "blocktype": 5,
                                            "opcode": "variable_OAProxyLeft",
                                            "varname": "OAProxyLeft",
                                            "x": "1387",
                                            "y": "1169"
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
                                    "y": "1164"
                                },
                                "opcode": "operator_logic",
                                "position": "2",
                                "type": "12"
                            },
                            "x": "1044",
                            "y": "1159"
                        },
                        "opcode": "operator_and",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000107": {
                            "disabled": "0",
                            "opcode": "data_setvariableto",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "11"
                            },
                            "param_3": {
                                "item_0000000106": {
                                    "disabled": "0",
                                    "opcode": "operator_math",
                                    "param_0": {
                                        "item_0000000104": {
                                            "blocktype": 5,
                                            "opcode": "variable_OC",
                                            "varname": "OC",
                                            "x": "1243",
                                            "y": "1234"
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
                                        "item_0000000105": {
                                            "blocktype": 5,
                                            "opcode": "variable_DFC",
                                            "varname": "DFC",
                                            "x": "1352",
                                            "y": "1234"
                                        },
                                        "opcode": "variable_DFC",
                                        "position": "2",
                                        "type": "10"
                                    },
                                    "x": "1228",
                                    "y": "1229"
                                },
                                "opcode": "operator_math",
                                "position": "3",
                                "type": "10"
                            },
                            "x": "1033",
                            "y": "1224"
                        },
                        "type": "15"
                    },
                    "x": "1013",
                    "y": "1154"
                },
                "type": "15"
            },
            "x": "993",
            "y": "934"
        }
    },
    "top_11": {
        "item_0000000110": {
            "blocktype": 5,
            "opcode": "variable_DLC",
            "varname": "DLC",
            "x": "3865",
            "y": "88"
        }
    },
    "top_12": {
        "item_0000000111": {
            "disabled": "0",
            "opcode": "function_4",
            "x": "5922",
            "y": "12"
        }
    },
    "top_13": {
        "item_0000000112": {
            "disabled": "0",
            "opcode": "function_3",
            "x": "5713",
            "y": "13"
        }
    },
    "top_14": {
        "item_0000000113": {
            "disabled": "0",
            "opcode": "function_2",
            "x": "6460",
            "y": "3"
        }
    },
    "top_15": {
        "item_0000000114": {
            "blocktype": 5,
            "opcode": "variable_oaval",
            "varname": "oaval",
            "x": "3991",
            "y": "79"
        }
    },
    "top_16": {
        "item_0000000115": {
            "blocktype": 5,
            "opcode": "variable_oavalcm",
            "varname": "oavalcm",
            "x": "3989",
            "y": "29"
        }
    },
    "top_17": {
        "item_0000000116": {
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
        "item_0000000136": {
            "disabled": "0",
            "opcode": "control_forever",
            "substack1": {
                "item_0000000135": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000118": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000117": {
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
                        "item_0000000126": {
                            "disabled": "0",
                            "opcode": "control_if",
                            "param_1": {
                                "item_0000000120": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000119": {
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
                                "item_0000000121": {
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
                                "item_0000000122": {
                                    "disabled": "0",
                                    "opcode": "function_3",
                                    "x": "1960",
                                    "y": "303"
                                },
                                "item_0000000123": {
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
                                "item_0000000124": {
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
                                "item_0000000125": {
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
                        "item_0000000131": {
                            "disabled": "0",
                            "opcode": "control_if",
                            "param_1": {
                                "item_0000000128": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000127": {
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
                                "item_0000000129": {
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
                                "item_0000000130": {
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
                        "item_0000000132": {
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
                        "item_0000000133": {
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
                        "item_0000000134": {
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
    "top_18": {
        "item_0000000144": {
            "disabled": "0",
            "opcode": "control_if",
            "param_1": {
                "item_0000000138": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000137": {
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
                "item_0000000139": {
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
                "item_0000000142": {
                    "disabled": "0",
                    "opcode": "control_waituntil",
                    "param_1": {
                        "item_0000000141": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000140": {
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
                "item_0000000143": {
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
        "item_0000000152": {
            "disabled": "0",
            "opcode": "control_if",
            "param_1": {
                "item_0000000146": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000145": {
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
                "item_0000000147": {
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
                "item_0000000150": {
                    "disabled": "0",
                    "opcode": "control_waituntil",
                    "param_1": {
                        "item_0000000149": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000148": {
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
                "item_0000000151": {
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
    "top_19": {
        "item_0000000160": {
            "disabled": "0",
            "opcode": "control_if",
            "param_1": {
                "item_0000000154": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000153": {
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
                "item_0000000155": {
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
                "item_0000000158": {
                    "disabled": "0",
                    "opcode": "control_waituntil",
                    "param_1": {
                        "item_0000000157": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000156": {
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
                "item_0000000159": {
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
        "item_0000000168": {
            "disabled": "0",
            "opcode": "control_if",
            "param_1": {
                "item_0000000162": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000161": {
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
                "item_0000000163": {
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
                "item_0000000166": {
                    "disabled": "0",
                    "opcode": "control_waituntil",
                    "param_1": {
                        "item_0000000165": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000164": {
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
                "item_0000000167": {
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
    "top_2": {
        "item_0000000021": {
            "disabled": "0",
            "opcode": "operator_and",
            "param_0": {
                "item_0000000019": {
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
                "item_0000000020": {
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
    "top_20": {
        "item_0000000170": {
            "disabled": "0",
            "opcode": "control_if",
            "param_1": {
                "item_0000000169": {
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
    "top_21": {
        "item_0000000172": {
            "disabled": "0",
            "opcode": "control_ifelse",
            "param_1": {
                "item_0000000171": {
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
    "top_22": {
        "item_0000000173": {
            "blocktype": 5,
            "opcode": "variable_sensorstate",
            "varname": "sensorstate",
            "x": "3940",
            "y": "180"
        }
    },
    "top_23": {
        "item_0000000175": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000174": {
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
        "item_0000000176": {
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
        "item_0000000177": {
            "blocktype": 5,
            "opcode": "variable_OAProxyRight",
            "varname": "OAProxyRight",
            "x": "3812",
            "y": "208"
        }
    },
    "top_26": {
        "item_0000000178": {
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
        "item_0000000179": {
            "disabled": "0",
            "opcode": "MakerSteerin_Analogy",
            "param_1": {
                "opcode": "CGraphicsTextItem",
                "position": "1",
                "type": "10",
                "value": "135"
            },
            "x": "5539",
            "y": "60"
        }
    },
    "top_28": {
        "item_0000000180": {
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
        "item_0000000181": {
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
        "item_0000000182": {
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
        "item_0000000183": {
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
        "item_0000000184": {
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
        "item_0000000185": {
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
        "item_0000000186": {
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
        "item_0000000205": {
            "disabled": "0",
            "opcode": "control_forever",
            "substack1": {
                "item_0000000188": {
                    "disabled": "0",
                    "opcode": "data_setvariableto",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "5"
                    },
                    "param_3": {
                        "item_0000000187": {
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
                "item_0000000196": {
                    "disabled": "0",
                    "opcode": "data_setvariableto",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "5"
                    },
                    "param_3": {
                        "item_0000000195": {
                            "disabled": "0",
                            "opcode": "operator_math",
                            "param_0": {
                                "item_0000000191": {
                                    "disabled": "0",
                                    "opcode": "operator_math",
                                    "param_0": {
                                        "item_0000000189": {
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
                                        "item_0000000190": {
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
                                "item_0000000194": {
                                    "disabled": "0",
                                    "opcode": "operator_math",
                                    "param_0": {
                                        "item_0000000192": {
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
                                        "item_0000000193": {
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
                "item_0000000204": {
                    "disabled": "0",
                    "opcode": "data_setvariableto",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "6"
                    },
                    "param_3": {
                        "item_0000000203": {
                            "disabled": "0",
                            "opcode": "operator_math",
                            "param_0": {
                                "item_0000000201": {
                                    "disabled": "0",
                                    "opcode": "operator_math",
                                    "param_0": {
                                        "item_0000000197": {
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
                                        "item_0000000200": {
                                            "disabled": "0",
                                            "opcode": "operator_math",
                                            "param_0": {
                                                "item_0000000198": {
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
                                                "item_0000000199": {
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
                                "item_0000000202": {
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
    "top_29": {
        "item_0000000206": {
            "blocktype": 5,
            "opcode": "variable_IC",
            "varname": "IC",
            "x": "3933",
            "y": "33"
        }
    },
    "top_3": {
        "item_0000000024": {
            "disabled": "0",
            "opcode": "operator_or",
            "param_0": {
                "item_0000000022": {
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
                "item_0000000023": {
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
    "top_30": {
        "item_0000000207": {
            "disabled": "0",
            "opcode": "control_forever",
            "x": "4727",
            "y": "28"
        }
    },
    "top_31": {
        "item_0000000209": {
            "disabled": "0",
            "opcode": "control_waituntil",
            "param_1": {
                "item_0000000208": {
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
    "top_32": {
        "item_0000000211": {
            "disabled": "0",
            "opcode": "control_if",
            "param_1": {
                "item_0000000210": {
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
    "top_33": {
        "item_0000000212": {
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
                "value": "100"
            },
            "x": "5474",
            "y": "158"
        }
    },
    "top_34": {
        "item_0000000213": {
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
            "y": "97"
        }
    },
    "top_35": {
        "item_0000000214": {
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
        "item_0000000215": {
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
        "item_0000000216": {
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
        "item_0000000217": {
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
        "item_0000000218": {
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
        "item_0000000219": {
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
        "item_0000000220": {
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
        "item_0000000239": {
            "disabled": "0",
            "opcode": "control_forever",
            "substack1": {
                "item_0000000222": {
                    "disabled": "0",
                    "opcode": "data_setvariableto",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "5"
                    },
                    "param_3": {
                        "item_0000000221": {
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
                "item_0000000230": {
                    "disabled": "0",
                    "opcode": "data_setvariableto",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "5"
                    },
                    "param_3": {
                        "item_0000000229": {
                            "disabled": "0",
                            "opcode": "operator_math",
                            "param_0": {
                                "item_0000000225": {
                                    "disabled": "0",
                                    "opcode": "operator_math",
                                    "param_0": {
                                        "item_0000000223": {
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
                                        "item_0000000224": {
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
                                "item_0000000228": {
                                    "disabled": "0",
                                    "opcode": "operator_math",
                                    "param_0": {
                                        "item_0000000226": {
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
                                        "item_0000000227": {
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
                "item_0000000238": {
                    "disabled": "0",
                    "opcode": "data_setvariableto",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "6"
                    },
                    "param_3": {
                        "item_0000000237": {
                            "disabled": "0",
                            "opcode": "operator_math",
                            "param_0": {
                                "item_0000000235": {
                                    "disabled": "0",
                                    "opcode": "operator_math",
                                    "param_0": {
                                        "item_0000000231": {
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
                                        "item_0000000234": {
                                            "disabled": "0",
                                            "opcode": "operator_math",
                                            "param_0": {
                                                "item_0000000232": {
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
                                                "item_0000000233": {
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
                                "item_0000000236": {
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
    "top_36": {
        "item_0000000240": {
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
            "x": "4063",
            "y": "159"
        }
    },
    "top_37": {
        "item_0000000241": {
            "disabled": "0",
            "opcode": "break",
            "x": "4701",
            "y": "239"
        },
        "item_0000000242": {
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
    "top_38": {
        "item_0000000243": {
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
    "top_39": {
        "item_0000000244": {
            "blocktype": 5,
            "opcode": "variable_OAProxyLeft",
            "varname": "OAProxyLeft",
            "x": "3821",
            "y": "149"
        }
    },
    "top_4": {
        "item_0000000025": {
            "blocktype": 5,
            "opcode": "variable_b",
            "varname": "b",
            "x": "4264",
            "y": "22"
        }
    },
    "top_40": {
        "item_0000000245": {
            "blocktype": 5,
            "opcode": "variable_OC",
            "varname": "OC",
            "x": "3872",
            "y": "33"
        }
    },
    "top_41": {
        "item_0000000246": {
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
    "top_42": {
        "item_0000000247": {
            "blocktype": 5,
            "opcode": "variable_CD",
            "varname": "CD",
            "x": "3808",
            "y": "33"
        }
    },
    "top_43": {
        "item_0000000260": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000249": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000248": {
                            "blocktype": 5,
                            "opcode": "variable_turns",
                            "varname": "turns",
                            "x": "1081",
                            "y": "79"
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
                    "x": "1061",
                    "y": "74"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000259": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000251": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000250": {
                                    "disabled": "0",
                                    "opcode": "sensing_gray",
                                    "param_0": {
                                        "position": "0",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "x": "1067",
                                    "y": "139"
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
                            "x": "1047",
                            "y": "134"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000252": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "135"
                            },
                            "x": "1036",
                            "y": "189"
                        },
                        "item_0000000255": {
                            "disabled": "0",
                            "opcode": "control_waituntil",
                            "param_1": {
                                "item_0000000254": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000253": {
                                            "disabled": "0",
                                            "opcode": "sensing_gray",
                                            "param_0": {
                                                "position": "0",
                                                "type": "11",
                                                "value": "1"
                                            },
                                            "x": "1150",
                                            "y": "249"
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
                                    "x": "1130",
                                    "y": "244"
                                },
                                "opcode": "operator_logic",
                                "position": "1",
                                "type": "12"
                            },
                            "x": "1036",
                            "y": "239"
                        },
                        "item_0000000256": {
                            "disabled": "0",
                            "opcode": "control_wait",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "0.5"
                            },
                            "x": "1036",
                            "y": "299"
                        },
                        "item_0000000257": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "95"
                            },
                            "x": "1036",
                            "y": "349"
                        },
                        "item_0000000258": {
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
                            "x": "1036",
                            "y": "399"
                        },
                        "type": "15"
                    },
                    "x": "1016",
                    "y": "129"
                },
                "type": "15"
            },
            "x": "996",
            "y": "69"
        }
    },
    "top_44": {
        "item_0000000261": {
            "disabled": "0",
            "opcode": "MakerSteerin_Analogy",
            "param_1": {
                "opcode": "CGraphicsTextItem",
                "position": "1",
                "type": "10",
                "value": "95"
            },
            "x": "5715",
            "y": "342"
        },
        "item_0000000262": {
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
            "x": "5715",
            "y": "392"
        },
        "item_0000000263": {
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
            "x": "5715",
            "y": "442"
        },
        "item_0000000298": {
            "disabled": "0",
            "opcode": "control_forever",
            "substack1": {
                "item_0000000276": {
                    "disabled": "0",
                    "opcode": "control_while",
                    "param_1": {
                        "item_0000000265": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000264": {
                                    "blocktype": 5,
                                    "opcode": "variable_turns",
                                    "varname": "turns",
                                    "x": "5820",
                                    "y": "552"
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
                            "x": "5800",
                            "y": "547"
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
                                "item_0000000267": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000266": {
                                            "disabled": "0",
                                            "opcode": "sensing_gray",
                                            "param_0": {
                                                "position": "0",
                                                "type": "11",
                                                "value": "1"
                                            },
                                            "x": "5806",
                                            "y": "612"
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
                                    "x": "5786",
                                    "y": "607"
                                },
                                "opcode": "operator_logic",
                                "position": "1",
                                "type": "12"
                            },
                            "substack1": {
                                "item_0000000268": {
                                    "disabled": "0",
                                    "opcode": "MakerSteerin_Analogy",
                                    "param_1": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "1",
                                        "type": "10",
                                        "value": "135"
                                    },
                                    "x": "5775",
                                    "y": "662"
                                },
                                "item_0000000271": {
                                    "disabled": "0",
                                    "opcode": "control_waituntil",
                                    "param_1": {
                                        "item_0000000270": {
                                            "disabled": "0",
                                            "opcode": "operator_logic",
                                            "param_0": {
                                                "item_0000000269": {
                                                    "disabled": "0",
                                                    "opcode": "sensing_gray",
                                                    "param_0": {
                                                        "position": "0",
                                                        "type": "11",
                                                        "value": "5"
                                                    },
                                                    "x": "5889",
                                                    "y": "722"
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
                                            "x": "5869",
                                            "y": "717"
                                        },
                                        "opcode": "operator_logic",
                                        "position": "1",
                                        "type": "12"
                                    },
                                    "x": "5775",
                                    "y": "712"
                                },
                                "item_0000000272": {
                                    "disabled": "0",
                                    "opcode": "control_wait",
                                    "param_1": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "1",
                                        "type": "10",
                                        "value": "1"
                                    },
                                    "x": "5775",
                                    "y": "772"
                                },
                                "item_0000000273": {
                                    "disabled": "0",
                                    "opcode": "MakerSteerin_Analogy",
                                    "param_1": {
                                        "opcode": "CGraphicsTextItem",
                                        "position": "1",
                                        "type": "10",
                                        "value": "95"
                                    },
                                    "x": "5775",
                                    "y": "822"
                                },
                                "item_0000000274": {
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
                                    "x": "5775",
                                    "y": "872"
                                },
                                "type": "15"
                            },
                            "x": "5755",
                            "y": "602"
                        },
                        "type": "15"
                    },
                    "x": "5735",
                    "y": "542"
                },
                "item_0000000281": {
                    "disabled": "0",
                    "opcode": "control_while",
                    "param_1": {
                        "item_0000000278": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000277": {
                                    "blocktype": 5,
                                    "opcode": "variable_turns",
                                    "varname": "turns",
                                    "x": "5820",
                                    "y": "992"
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
                            "x": "5800",
                            "y": "987"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000279": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "95"
                            },
                            "x": "5755",
                            "y": "1042"
                        },
                        "item_0000000280": {
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
                            "x": "5755",
                            "y": "1092"
                        },
                        "type": "15"
                    },
                    "x": "5735",
                    "y": "982"
                },
                "item_0000000289": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000283": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000282": {
                                    "disabled": "0",
                                    "opcode": "MakerSensor_InfreadDistance",
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "2"
                                    },
                                    "x": "5786",
                                    "y": "1182"
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
                                "value": "50"
                            },
                            "x": "5766",
                            "y": "1177"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000284": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "120"
                            },
                            "x": "5755",
                            "y": "1232"
                        },
                        "item_0000000287": {
                            "disabled": "0",
                            "opcode": "control_waituntil",
                            "param_1": {
                                "item_0000000286": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000285": {
                                            "disabled": "0",
                                            "opcode": "MakerSensor_InfreadDistance",
                                            "param_1": {
                                                "position": "1",
                                                "type": "11",
                                                "value": "2"
                                            },
                                            "x": "5869",
                                            "y": "1292"
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
                                        "value": "55"
                                    },
                                    "x": "5849",
                                    "y": "1287"
                                },
                                "opcode": "operator_logic",
                                "position": "1",
                                "type": "12"
                            },
                            "x": "5755",
                            "y": "1282"
                        },
                        "item_0000000288": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "95"
                            },
                            "x": "5755",
                            "y": "1342"
                        },
                        "type": "15"
                    },
                    "x": "5735",
                    "y": "1172"
                },
                "item_0000000297": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000291": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000290": {
                                    "disabled": "0",
                                    "opcode": "MakerSensor_InfreadDistance",
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "2"
                                    },
                                    "x": "5786",
                                    "y": "1432"
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
                                "value": "65"
                            },
                            "x": "5766",
                            "y": "1427"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000292": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "80"
                            },
                            "x": "5755",
                            "y": "1482"
                        },
                        "item_0000000295": {
                            "disabled": "0",
                            "opcode": "control_waituntil",
                            "param_1": {
                                "item_0000000294": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000293": {
                                            "disabled": "0",
                                            "opcode": "MakerSensor_InfreadDistance",
                                            "param_1": {
                                                "position": "1",
                                                "type": "11",
                                                "value": "2"
                                            },
                                            "x": "5869",
                                            "y": "1542"
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
                                    "x": "5849",
                                    "y": "1537"
                                },
                                "opcode": "operator_logic",
                                "position": "1",
                                "type": "12"
                            },
                            "x": "5755",
                            "y": "1532"
                        },
                        "item_0000000296": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "95"
                            },
                            "x": "5755",
                            "y": "1592"
                        },
                        "type": "15"
                    },
                    "x": "5735",
                    "y": "1422"
                },
                "type": "15"
            },
            "x": "5715",
            "y": "492"
        }
    },
    "top_45": {
        "item_0000000310": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000300": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000299": {
                            "blocktype": 5,
                            "opcode": "variable_turns",
                            "varname": "turns",
                            "x": "1985",
                            "y": "1003"
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
                    "x": "1965",
                    "y": "998"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000309": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000302": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000301": {
                                    "disabled": "0",
                                    "opcode": "sensing_gray",
                                    "param_0": {
                                        "position": "0",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "x": "1971",
                                    "y": "1063"
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
                            "x": "1951",
                            "y": "1058"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000303": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "135"
                            },
                            "x": "1940",
                            "y": "1113"
                        },
                        "item_0000000306": {
                            "disabled": "0",
                            "opcode": "control_waituntil",
                            "param_1": {
                                "item_0000000305": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000304": {
                                            "disabled": "0",
                                            "opcode": "sensing_gray",
                                            "param_0": {
                                                "position": "0",
                                                "type": "11",
                                                "value": "1"
                                            },
                                            "x": "2054",
                                            "y": "1173"
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
                                    "x": "2034",
                                    "y": "1168"
                                },
                                "opcode": "operator_logic",
                                "position": "1",
                                "type": "12"
                            },
                            "x": "1940",
                            "y": "1163"
                        },
                        "item_0000000307": {
                            "disabled": "0",
                            "opcode": "control_wait",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "0.5"
                            },
                            "x": "1940",
                            "y": "1223"
                        },
                        "item_0000000308": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "95"
                            },
                            "x": "1940",
                            "y": "1273"
                        },
                        "type": "15"
                    },
                    "x": "1920",
                    "y": "1053"
                },
                "type": "15"
            },
            "x": "1900",
            "y": "993"
        }
    },
    "top_46": {
        "item_0000000311": {
            "disabled": "0",
            "opcode": "function_2",
            "x": "6196",
            "y": "7"
        }
    },
    "top_47": {
        "item_0000000312": {
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
    "top_48": {
        "item_0000000313": {
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
    "top_49": {
        "item_0000000314": {
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
    "top_5": {
        "item_0000000026": {
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
    "top_50": {
        "item_0000000315": {
            "blocktype": 5,
            "opcode": "variable_A",
            "varname": "A",
            "x": "4088",
            "y": "23"
        }
    },
    "top_51": {
        "item_0000000316": {
            "blocktype": 5,
            "opcode": "variable_B",
            "varname": "B",
            "x": "4145",
            "y": "26"
        }
    },
    "top_52": {
        "item_0000000317": {
            "blocktype": 5,
            "opcode": "variable_DFC",
            "varname": "DFC",
            "x": "3924",
            "y": "90"
        }
    },
    "top_53": {
        "item_0000000318": {
            "blocktype": 5,
            "opcode": "variable_a",
            "varname": "a",
            "x": "4207",
            "y": "22"
        }
    },
    "top_54": {
        "item_0000000319": {
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
    "top_55": {
        "item_0000000321": {
            "disabled": "0",
            "opcode": "operator_logic",
            "param_0": {
                "item_0000000320": {
                    "disabled": "0",
                    "opcode": "MakerSensor_InfreadDistance",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "2"
                    },
                    "x": "5319",
                    "y": "89"
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
                "value": "55"
            },
            "x": "5299",
            "y": "84"
        }
    },
    "top_56": {
        "item_0000000322": {
            "disabled": "0",
            "opcode": "",
            "x": "0",
            "y": "0"
        }
    },
    "top_57": {
        "item_0000000323": {
            "disabled": "0",
            "opcode": "main",
            "x": "5000",
            "y": "0"
        },
        "item_0000000324": {
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
        "item_0000000325": {
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
        "item_0000000326": {
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
        "item_0000000349": {
            "disabled": "0",
            "opcode": "control_forever",
            "substack1": {
                "item_0000000337": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000328": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000327": {
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
                        "item_0000000329": {
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
                        "item_0000000335": {
                            "disabled": "0",
                            "opcode": "control_waituntil",
                            "param_1": {
                                "item_0000000334": {
                                    "disabled": "0",
                                    "opcode": "operator_and",
                                    "param_0": {
                                        "item_0000000331": {
                                            "disabled": "0",
                                            "opcode": "operator_logic",
                                            "param_0": {
                                                "item_0000000330": {
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
                                        "item_0000000333": {
                                            "disabled": "0",
                                            "opcode": "operator_logic",
                                            "param_0": {
                                                "item_0000000332": {
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
                        "item_0000000336": {
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
                "item_0000000348": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000339": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000338": {
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
                        "item_0000000340": {
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
                        "item_0000000346": {
                            "disabled": "0",
                            "opcode": "control_waituntil",
                            "param_1": {
                                "item_0000000345": {
                                    "disabled": "0",
                                    "opcode": "operator_and",
                                    "param_0": {
                                        "item_0000000342": {
                                            "disabled": "0",
                                            "opcode": "operator_logic",
                                            "param_0": {
                                                "item_0000000341": {
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
                                        "item_0000000344": {
                                            "disabled": "0",
                                            "opcode": "operator_logic",
                                            "param_0": {
                                                "item_0000000343": {
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
                        "item_0000000347": {
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
    "top_6": {
        "item_0000000027": {
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
    "top_7": {
        "item_0000000028": {
            "blocktype": 5,
            "opcode": "variable_turns",
            "varname": "turns",
            "x": "3990",
            "y": "132"
        }
    },
    "top_8": {
        "item_0000000029": {
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
            "x": "3231",
            "y": "293"
        },
        "item_0000000030": {
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
            "x": "3231",
            "y": "343"
        },
        "item_0000000031": {
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
            "x": "3231",
            "y": "393"
        },
        "item_0000000032": {
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
            "x": "3231",
            "y": "443"
        },
        "item_0000000033": {
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
            "x": "3231",
            "y": "493"
        },
        "item_0000000034": {
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
            "x": "3231",
            "y": "543"
        },
        "item_0000000035": {
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
            "x": "3231",
            "y": "593"
        },
        "item_0000000036": {
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
            "x": "3231",
            "y": "643"
        },
        "item_0000000037": {
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
            "x": "3231",
            "y": "693"
        },
        "item_0000000038": {
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
            "x": "3231",
            "y": "743"
        }
    },
    "top_9": {
        "item_0000000049": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000040": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000039": {
                            "blocktype": 5,
                            "opcode": "variable_turns",
                            "varname": "turns",
                            "x": "2674",
                            "y": "35"
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
                    "x": "2654",
                    "y": "30"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000048": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000042": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000041": {
                                    "disabled": "0",
                                    "opcode": "sensing_gray",
                                    "param_0": {
                                        "position": "0",
                                        "type": "11",
                                        "value": "1"
                                    },
                                    "x": "2660",
                                    "y": "95"
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
                            "x": "2640",
                            "y": "90"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000043": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "135"
                            },
                            "x": "2629",
                            "y": "145"
                        },
                        "item_0000000046": {
                            "disabled": "0",
                            "opcode": "control_waituntil",
                            "param_1": {
                                "item_0000000045": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000044": {
                                            "disabled": "0",
                                            "opcode": "sensing_gray",
                                            "param_0": {
                                                "position": "0",
                                                "type": "11",
                                                "value": "5"
                                            },
                                            "x": "2743",
                                            "y": "205"
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
                                    "x": "2723",
                                    "y": "200"
                                },
                                "opcode": "operator_logic",
                                "position": "1",
                                "type": "12"
                            },
                            "x": "2629",
                            "y": "195"
                        },
                        "item_0000000047": {
                            "disabled": "0",
                            "opcode": "MakerSteerin_Analogy",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "95"
                            },
                            "x": "2629",
                            "y": "255"
                        },
                        "type": "15"
                    },
                    "x": "2609",
                    "y": "85"
                },
                "type": "15"
            },
            "x": "2589",
            "y": "25"
        },
        "item_0000000052": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000051": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000050": {
                            "blocktype": 5,
                            "opcode": "variable_turns",
                            "varname": "turns",
                            "x": "2674",
                            "y": "375"
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
                    "x": "2654",
                    "y": "370"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "x": "2589",
            "y": "365"
        },
        "item_0000000067": {
            "disabled": "0",
            "opcode": "control_while",
            "param_1": {
                "item_0000000054": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000053": {
                            "blocktype": 5,
                            "opcode": "variable_turns",
                            "varname": "turns",
                            "x": "2674",
                            "y": "495"
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
                    "x": "2654",
                    "y": "490"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000066": {
                    "disabled": "0",
                    "opcode": "control_if",
                    "param_1": {
                        "item_0000000056": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000055": {
                                    "disabled": "0",
                                    "opcode": "sensing_gray",
                                    "param_0": {
                                        "position": "0",
                                        "type": "11",
                                        "value": "5"
                                    },
                                    "x": "2660",
                                    "y": "555"
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
                            "x": "2640",
                            "y": "550"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000064": {
                            "disabled": "0",
                            "opcode": "control_waituntil",
                            "param_1": {
                                "item_0000000063": {
                                    "disabled": "0",
                                    "opcode": "operator_or",
                                    "param_0": {
                                        "item_0000000059": {
                                            "disabled": "0",
                                            "opcode": "operator_logic",
                                            "param_0": {
                                                "item_0000000057": {
                                                    "blocktype": 5,
                                                    "opcode": "variable_IC",
                                                    "varname": "IC",
                                                    "x": "2753",
                                                    "y": "620"
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
                                                "item_0000000058": {
                                                    "blocktype": 5,
                                                    "opcode": "variable_DFC",
                                                    "varname": "DFC",
                                                    "x": "2863",
                                                    "y": "620"
                                                },
                                                "opcode": "variable_DFC",
                                                "position": "2",
                                                "type": "10"
                                            },
                                            "x": "2733",
                                            "y": "615"
                                        },
                                        "opcode": "operator_logic",
                                        "position": "0",
                                        "type": "12"
                                    },
                                    "param_2": {
                                        "item_0000000062": {
                                            "disabled": "0",
                                            "opcode": "operator_logic",
                                            "param_0": {
                                                "item_0000000060": {
                                                    "blocktype": 5,
                                                    "opcode": "variable_IC",
                                                    "varname": "IC",
                                                    "x": "2990",
                                                    "y": "620"
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
                                                "item_0000000061": {
                                                    "blocktype": 5,
                                                    "opcode": "variable_DFC",
                                                    "varname": "DFC",
                                                    "x": "3100",
                                                    "y": "620"
                                                },
                                                "opcode": "variable_DFC",
                                                "position": "2",
                                                "type": "10"
                                            },
                                            "x": "2970",
                                            "y": "615"
                                        },
                                        "opcode": "operator_logic",
                                        "position": "2",
                                        "type": "12"
                                    },
                                    "x": "2723",
                                    "y": "610"
                                },
                                "opcode": "operator_or",
                                "position": "1",
                                "type": "12"
                            },
                            "x": "2629",
                            "y": "605"
                        },
                        "item_0000000065": {
                            "disabled": "0",
                            "opcode": "MakerMotion_stopOne",
                            "param_0": {
                                "position": "0",
                                "type": "11",
                                "value": "1"
                            },
                            "x": "2629",
                            "y": "675"
                        },
                        "type": "15"
                    },
                    "x": "2609",
                    "y": "545"
                },
                "type": "15"
            },
            "x": "2589",
            "y": "485"
        },
        "item_0000000076": {
            "disabled": "0",
            "opcode": "control_if",
            "param_1": {
                "item_0000000069": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000068": {
                            "disabled": "0",
                            "opcode": "sensing_gray",
                            "param_0": {
                                "position": "0",
                                "type": "11",
                                "value": "5"
                            },
                            "x": "2640",
                            "y": "795"
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
                    "x": "2620",
                    "y": "790"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000075": {
                    "disabled": "0",
                    "opcode": "control_while",
                    "param_1": {
                        "item_0000000072": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000070": {
                                    "blocktype": 5,
                                    "opcode": "variable_IC",
                                    "varname": "IC",
                                    "x": "2694",
                                    "y": "855"
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
                                "item_0000000071": {
                                    "blocktype": 5,
                                    "opcode": "variable_DFC",
                                    "varname": "DFC",
                                    "x": "2803",
                                    "y": "855"
                                },
                                "opcode": "variable_DFC",
                                "position": "2",
                                "type": "10"
                            },
                            "x": "2674",
                            "y": "850"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000073": {
                            "disabled": "0",
                            "opcode": "control_wait",
                            "param_1": {
                                "opcode": "CGraphicsTextItem",
                                "position": "1",
                                "type": "10",
                                "value": "0.2"
                            },
                            "x": "2629",
                            "y": "905"
                        },
                        "item_0000000074": {
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
                            "x": "2629",
                            "y": "955"
                        },
                        "type": "15"
                    },
                    "x": "2609",
                    "y": "845"
                },
                "type": "15"
            },
            "x": "2589",
            "y": "785"
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
        "CD"
    ]
}
