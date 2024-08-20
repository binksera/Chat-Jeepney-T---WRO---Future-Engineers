{
    "functionList": {
        "function_1": {
            "param_0": {
                "paramname": "OAinterval",
                "type": 3
            }
        },
        "function_2": {
            "param_0": {
                "paramname": "LightsforOA",
                "type": 3
            }
        }
    },
    "notes": {
        "note_0": {
            "text": "- light indicat for obstacle avoidance via rgb",
            "x": "6464.29",
            "y": "22.8571"
        },
        "note_1": {
            "text": "- translates value to cm via linear mapping\n- updates light indicator\n- sends final value to \"oavalcm\"",
            "x": "5527.14",
            "y": "269.143"
        }
    },
    "top_0": {
        "item_0000000000": {
            "disabled": "0",
            "opcode": "",
            "x": "5276",
            "y": "640"
        }
    },
    "top_1": {
        "item_0000000001": {
            "blocktype": 5,
            "opcode": "variable_oavalcm",
            "varname": "oavalcm",
            "x": "3962",
            "y": "402"
        }
    },
    "top_10": {
        "item_0000000039": {
            "blocktype": 6,
            "disabled": "0",
            "function_1": {
                "param_0": {
                    "paramname": "OAinterval",
                    "type": 3
                }
            },
            "opcode": "function_1",
            "param_0": {
                "opcode": "CGraphicsTextItem",
                "position": "0",
                "type": "9",
                "value": "OAinterval"
            },
            "x": "5256",
            "y": "10"
        },
        "item_0000000040": {
            "disabled": "0",
            "opcode": "Maker_displayFont",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "1"
            },
            "x": "5256",
            "y": "70"
        },
        "item_0000000041": {
            "disabled": "0",
            "opcode": "Maker_displayWords",
            "param_1": {
                "opcode": "CGraphicsTextItem",
                "position": "1",
                "type": "10",
                "value": "OAval"
            },
            "param_3": {
                "position": "3",
                "type": "11",
                "value": "1"
            },
            "x": "5256",
            "y": "120"
        },
        "item_0000000042": {
            "disabled": "0",
            "opcode": "Maker_displayWords",
            "param_1": {
                "opcode": "CGraphicsTextItem",
                "position": "1",
                "type": "10",
                "value": "OAinterv"
            },
            "param_3": {
                "position": "3",
                "type": "11",
                "value": "3"
            },
            "x": "5256",
            "y": "170"
        },
        "item_0000000043": {
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
                "value": "5"
            },
            "x": "5256",
            "y": "220"
        },
        "item_0000000044": {
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
                "value": "60"
            },
            "x": "5256",
            "y": "270"
        },
        "item_0000000045": {
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
                "value": "3"
            },
            "x": "5256",
            "y": "320"
        },
        "item_0000000046": {
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
                "value": "15"
            },
            "x": "5256",
            "y": "370"
        },
        "item_0000000078": {
            "disabled": "0",
            "opcode": "control_forever",
            "substack1": {
                "item_0000000048": {
                    "disabled": "0",
                    "opcode": "Maker_displayWords",
                    "param_1": {
                        "item_0000000047": {
                            "disabled": "0",
                            "opcode": "MakerSensor_InfreadDistance",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "1"
                            },
                            "x": "5404",
                            "y": "475"
                        },
                        "opcode": "MakerSensor_InfreadDistance",
                        "position": "1",
                        "type": "10"
                    },
                    "param_3": {
                        "position": "3",
                        "type": "11",
                        "value": "2"
                    },
                    "x": "5276",
                    "y": "470"
                },
                "item_0000000050": {
                    "disabled": "0",
                    "opcode": "data_setvariableto",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "1"
                    },
                    "param_3": {
                        "item_0000000049": {
                            "disabled": "0",
                            "opcode": "MakerSensor_InfreadDistance",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "1"
                            },
                            "x": "5480",
                            "y": "525"
                        },
                        "opcode": "MakerSensor_InfreadDistance",
                        "position": "3",
                        "type": "10"
                    },
                    "x": "5276",
                    "y": "520"
                },
                "item_0000000058": {
                    "disabled": "0",
                    "opcode": "data_setvariableto",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "1"
                    },
                    "param_3": {
                        "item_0000000057": {
                            "disabled": "0",
                            "opcode": "operator_math",
                            "param_0": {
                                "item_0000000053": {
                                    "disabled": "0",
                                    "opcode": "operator_math",
                                    "param_0": {
                                        "item_0000000051": {
                                            "blocktype": 5,
                                            "opcode": "variable_oaval",
                                            "varname": "oaval",
                                            "x": "5510",
                                            "y": "585"
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
                                        "item_0000000052": {
                                            "blocktype": 5,
                                            "opcode": "variable_A",
                                            "varname": "A",
                                            "x": "5635",
                                            "y": "585"
                                        },
                                        "opcode": "variable_A",
                                        "position": "2",
                                        "type": "10"
                                    },
                                    "x": "5495",
                                    "y": "580"
                                },
                                "opcode": "operator_math",
                                "position": "0",
                                "type": "10"
                            },
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "3"
                            },
                            "param_2": {
                                "item_0000000056": {
                                    "disabled": "0",
                                    "opcode": "operator_math",
                                    "param_0": {
                                        "item_0000000054": {
                                            "blocktype": 5,
                                            "opcode": "variable_b",
                                            "varname": "b",
                                            "x": "5772",
                                            "y": "585"
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
                                        "item_0000000055": {
                                            "blocktype": 5,
                                            "opcode": "variable_a",
                                            "varname": "a",
                                            "x": "5878",
                                            "y": "585"
                                        },
                                        "opcode": "variable_a",
                                        "position": "2",
                                        "type": "10"
                                    },
                                    "x": "5757",
                                    "y": "580"
                                },
                                "opcode": "operator_math",
                                "position": "2",
                                "type": "10"
                            },
                            "x": "5480",
                            "y": "575"
                        },
                        "opcode": "operator_math",
                        "position": "3",
                        "type": "10"
                    },
                    "x": "5276",
                    "y": "570"
                },
                "item_0000000066": {
                    "disabled": "0",
                    "opcode": "data_setvariableto",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "1"
                    },
                    "param_3": {
                        "item_0000000065": {
                            "disabled": "0",
                            "opcode": "operator_math",
                            "param_0": {
                                "item_0000000063": {
                                    "disabled": "0",
                                    "opcode": "operator_math",
                                    "param_0": {
                                        "item_0000000059": {
                                            "blocktype": 5,
                                            "opcode": "variable_oaval",
                                            "varname": "oaval",
                                            "x": "5510",
                                            "y": "660"
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
                                        "item_0000000062": {
                                            "disabled": "0",
                                            "opcode": "operator_math",
                                            "param_0": {
                                                "item_0000000060": {
                                                    "blocktype": 5,
                                                    "opcode": "variable_B",
                                                    "varname": "B",
                                                    "x": "5651",
                                                    "y": "660"
                                                },
                                                "opcode": "variable_B",
                                                "position": "0",
                                                "type": "10"
                                            },
                                            "param_1": {
                                                "position": "1",
                                                "type": "11",
                                                "value": "2"
                                            },
                                            "param_2": {
                                                "item_0000000061": {
                                                    "blocktype": 5,
                                                    "opcode": "variable_A",
                                                    "varname": "A",
                                                    "x": "5757",
                                                    "y": "660"
                                                },
                                                "opcode": "variable_A",
                                                "position": "2",
                                                "type": "10"
                                            },
                                            "x": "5636",
                                            "y": "655"
                                        },
                                        "opcode": "operator_math",
                                        "position": "2",
                                        "type": "10"
                                    },
                                    "x": "5495",
                                    "y": "650"
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
                                "item_0000000064": {
                                    "blocktype": 5,
                                    "opcode": "variable_a",
                                    "varname": "a",
                                    "x": "5896",
                                    "y": "660"
                                },
                                "opcode": "variable_a",
                                "position": "2",
                                "type": "10"
                            },
                            "x": "5480",
                            "y": "645"
                        },
                        "opcode": "operator_math",
                        "position": "3",
                        "type": "10"
                    },
                    "x": "5276",
                    "y": "640"
                },
                "item_0000000074": {
                    "disabled": "0",
                    "opcode": "data_setvariableto",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "6"
                    },
                    "param_3": {
                        "item_0000000073": {
                            "disabled": "0",
                            "opcode": "operator_math",
                            "param_0": {
                                "item_0000000071": {
                                    "disabled": "0",
                                    "opcode": "operator_math",
                                    "param_0": {
                                        "item_0000000067": {
                                            "blocktype": 5,
                                            "opcode": "variable_oaval",
                                            "varname": "oaval",
                                            "x": "5533",
                                            "y": "740"
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
                                        "item_0000000070": {
                                            "disabled": "0",
                                            "opcode": "operator_math",
                                            "param_0": {
                                                "item_0000000068": {
                                                    "blocktype": 5,
                                                    "opcode": "variable_B",
                                                    "varname": "B",
                                                    "x": "5674",
                                                    "y": "740"
                                                },
                                                "opcode": "variable_B",
                                                "position": "0",
                                                "type": "10"
                                            },
                                            "param_1": {
                                                "position": "1",
                                                "type": "11",
                                                "value": "2"
                                            },
                                            "param_2": {
                                                "item_0000000069": {
                                                    "blocktype": 5,
                                                    "opcode": "variable_A",
                                                    "varname": "A",
                                                    "x": "5780",
                                                    "y": "740"
                                                },
                                                "opcode": "variable_A",
                                                "position": "2",
                                                "type": "10"
                                            },
                                            "x": "5659",
                                            "y": "735"
                                        },
                                        "opcode": "operator_math",
                                        "position": "2",
                                        "type": "10"
                                    },
                                    "x": "5518",
                                    "y": "730"
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
                                "item_0000000072": {
                                    "blocktype": 5,
                                    "opcode": "variable_a",
                                    "varname": "a",
                                    "x": "5919",
                                    "y": "740"
                                },
                                "opcode": "variable_a",
                                "position": "2",
                                "type": "10"
                            },
                            "x": "5503",
                            "y": "725"
                        },
                        "opcode": "operator_math",
                        "position": "3",
                        "type": "10"
                    },
                    "x": "5276",
                    "y": "720"
                },
                "item_0000000076": {
                    "disabled": "0",
                    "opcode": "Maker_displayWords",
                    "param_1": {
                        "item_0000000075": {
                            "blocktype": 5,
                            "opcode": "variable_oavalcm",
                            "varname": "oavalcm",
                            "x": "5404",
                            "y": "805"
                        },
                        "opcode": "variable_oavalcm",
                        "position": "1",
                        "type": "10"
                    },
                    "param_3": {
                        "position": "3",
                        "type": "11",
                        "value": "4"
                    },
                    "x": "5276",
                    "y": "800"
                },
                "item_0000000077": {
                    "disabled": "0",
                    "opcode": "function_2",
                    "x": "5276",
                    "y": "850"
                },
                "type": "15"
            },
            "x": "5256",
            "y": "420"
        }
    },
    "top_11": {
        "item_0000000079": {
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
            "x": "3960",
            "y": "131"
        }
    },
    "top_12": {
        "item_0000000080": {
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
            "x": "3969",
            "y": "42"
        }
    },
    "top_13": {
        "item_0000000081": {
            "disabled": "0",
            "opcode": "Maker_displayWords",
            "param_1": {
                "opcode": "CGraphicsTextItem",
                "position": "1",
                "type": "10",
                "value": "AISTEAM"
            },
            "param_3": {
                "position": "3",
                "type": "11",
                "value": "1"
            },
            "x": "4132",
            "y": "282"
        }
    },
    "top_14": {
        "item_0000000089": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "1"
            },
            "param_3": {
                "item_0000000088": {
                    "disabled": "0",
                    "opcode": "operator_math",
                    "param_0": {
                        "item_0000000084": {
                            "disabled": "0",
                            "opcode": "operator_math",
                            "param_0": {
                                "item_0000000082": {
                                    "blocktype": 5,
                                    "opcode": "variable_oaval",
                                    "varname": "oaval",
                                    "x": "4158",
                                    "y": "478"
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
                                "item_0000000083": {
                                    "blocktype": 5,
                                    "opcode": "variable_A",
                                    "varname": "A",
                                    "x": "4283",
                                    "y": "478"
                                },
                                "opcode": "variable_A",
                                "position": "2",
                                "type": "10"
                            },
                            "x": "4143",
                            "y": "473"
                        },
                        "opcode": "operator_math",
                        "position": "0",
                        "type": "10"
                    },
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "3"
                    },
                    "param_2": {
                        "item_0000000087": {
                            "disabled": "0",
                            "opcode": "operator_math",
                            "param_0": {
                                "item_0000000085": {
                                    "blocktype": 5,
                                    "opcode": "variable_b",
                                    "varname": "b",
                                    "x": "4420",
                                    "y": "478"
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
                                "item_0000000086": {
                                    "blocktype": 5,
                                    "opcode": "variable_a",
                                    "varname": "a",
                                    "x": "4526",
                                    "y": "478"
                                },
                                "opcode": "variable_a",
                                "position": "2",
                                "type": "10"
                            },
                            "x": "4405",
                            "y": "473"
                        },
                        "opcode": "operator_math",
                        "position": "2",
                        "type": "10"
                    },
                    "x": "4128",
                    "y": "468"
                },
                "opcode": "operator_math",
                "position": "3",
                "type": "10"
            },
            "x": "3924",
            "y": "463"
        },
        "item_0000000097": {
            "disabled": "0",
            "opcode": "data_setvariableto",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "1"
            },
            "param_3": {
                "item_0000000096": {
                    "disabled": "0",
                    "opcode": "operator_math",
                    "param_0": {
                        "item_0000000094": {
                            "disabled": "0",
                            "opcode": "operator_math",
                            "param_0": {
                                "item_0000000090": {
                                    "blocktype": 5,
                                    "opcode": "variable_oaval",
                                    "varname": "oaval",
                                    "x": "4158",
                                    "y": "553"
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
                                "item_0000000093": {
                                    "disabled": "0",
                                    "opcode": "operator_math",
                                    "param_0": {
                                        "item_0000000091": {
                                            "blocktype": 5,
                                            "opcode": "variable_B",
                                            "varname": "B",
                                            "x": "4299",
                                            "y": "553"
                                        },
                                        "opcode": "variable_B",
                                        "position": "0",
                                        "type": "10"
                                    },
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "2"
                                    },
                                    "param_2": {
                                        "item_0000000092": {
                                            "blocktype": 5,
                                            "opcode": "variable_A",
                                            "varname": "A",
                                            "x": "4405",
                                            "y": "553"
                                        },
                                        "opcode": "variable_A",
                                        "position": "2",
                                        "type": "10"
                                    },
                                    "x": "4284",
                                    "y": "548"
                                },
                                "opcode": "operator_math",
                                "position": "2",
                                "type": "10"
                            },
                            "x": "4143",
                            "y": "543"
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
                        "item_0000000095": {
                            "blocktype": 5,
                            "opcode": "variable_a",
                            "varname": "a",
                            "x": "4544",
                            "y": "553"
                        },
                        "opcode": "variable_a",
                        "position": "2",
                        "type": "10"
                    },
                    "x": "4128",
                    "y": "538"
                },
                "opcode": "operator_math",
                "position": "3",
                "type": "10"
            },
            "x": "3924",
            "y": "533"
        }
    },
    "top_15": {
        "item_0000000100": {
            "disabled": "0",
            "opcode": "control_if",
            "param_1": {
                "item_0000000098": {
                    "disabled": "0",
                    "opcode": "empty",
                    "x": "4514",
                    "y": "57"
                },
                "opcode": "empty",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000099": {
                    "disabled": "0",
                    "opcode": "MakerLED_ALLColorLED",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "2"
                    },
                    "param_3": {
                        "position": "3",
                        "type": "13",
                        "value": "#ffffff"
                    },
                    "x": "4503",
                    "y": "97"
                },
                "type": "15"
            },
            "x": "4483",
            "y": "47"
        }
    },
    "top_16": {
        "item_0000000101": {
            "disabled": "0",
            "opcode": "main",
            "x": "5000",
            "y": "0"
        },
        "item_0000000102": {
            "disabled": "0",
            "opcode": "function_1",
            "x": "5000",
            "y": "55"
        }
    },
    "top_2": {
        "item_0000000002": {
            "blocktype": 6,
            "disabled": "0",
            "function_2": {
                "param_0": {
                    "paramname": "LightsforOA",
                    "type": 3
                }
            },
            "opcode": "function_2",
            "param_0": {
                "opcode": "CGraphicsTextItem",
                "position": "0",
                "type": "9",
                "value": "LightsforOA"
            },
            "x": "6002",
            "y": "9"
        },
        "item_0000000003": {
            "disabled": "0",
            "opcode": "MakerLED_ALLColorLED",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "2"
            },
            "param_3": {
                "position": "3",
                "type": "13",
                "value": "#55aa00"
            },
            "x": "6002.29",
            "y": "68.5714"
        },
        "item_0000000031": {
            "disabled": "0",
            "opcode": "control_ifelse",
            "param_1": {
                "item_0000000005": {
                    "disabled": "0",
                    "opcode": "operator_logic",
                    "param_0": {
                        "item_0000000004": {
                            "blocktype": 5,
                            "opcode": "variable_oaval",
                            "varname": "oaval",
                            "x": "6053.29",
                            "y": "128.571"
                        },
                        "opcode": "variable_oaval",
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
                        "value": "15"
                    },
                    "x": "6033.29",
                    "y": "123.571"
                },
                "opcode": "operator_logic",
                "position": "1",
                "type": "12"
            },
            "substack1": {
                "item_0000000006": {
                    "disabled": "0",
                    "opcode": "MakerLED_ALLColorLED",
                    "param_1": {
                        "position": "1",
                        "type": "11",
                        "value": "2"
                    },
                    "param_3": {
                        "position": "3",
                        "type": "13",
                        "value": "#55aa00"
                    },
                    "x": "6022.29",
                    "y": "178.571"
                },
                "type": "15"
            },
            "substack2": {
                "item_0000000030": {
                    "disabled": "0",
                    "opcode": "control_ifelse",
                    "param_1": {
                        "item_0000000008": {
                            "disabled": "0",
                            "opcode": "operator_logic",
                            "param_0": {
                                "item_0000000007": {
                                    "blocktype": 5,
                                    "opcode": "variable_oaval",
                                    "varname": "oaval",
                                    "x": "6073.29",
                                    "y": "268.571"
                                },
                                "opcode": "variable_oaval",
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
                                "value": "13"
                            },
                            "x": "6053.29",
                            "y": "263.571"
                        },
                        "opcode": "operator_logic",
                        "position": "1",
                        "type": "12"
                    },
                    "substack1": {
                        "item_0000000009": {
                            "disabled": "0",
                            "opcode": "MakerLED_ALLColorLED",
                            "param_1": {
                                "position": "1",
                                "type": "11",
                                "value": "2"
                            },
                            "param_3": {
                                "position": "3",
                                "type": "13",
                                "value": "#aaff55"
                            },
                            "x": "6042.29",
                            "y": "318.571"
                        },
                        "type": "15"
                    },
                    "substack2": {
                        "item_0000000029": {
                            "disabled": "0",
                            "opcode": "control_ifelse",
                            "param_1": {
                                "item_0000000011": {
                                    "disabled": "0",
                                    "opcode": "operator_logic",
                                    "param_0": {
                                        "item_0000000010": {
                                            "blocktype": 5,
                                            "opcode": "variable_oaval",
                                            "varname": "oaval",
                                            "x": "6093.29",
                                            "y": "408.571"
                                        },
                                        "opcode": "variable_oaval",
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
                                        "value": "11"
                                    },
                                    "x": "6073.29",
                                    "y": "403.571"
                                },
                                "opcode": "operator_logic",
                                "position": "1",
                                "type": "12"
                            },
                            "substack1": {
                                "item_0000000012": {
                                    "disabled": "0",
                                    "opcode": "MakerLED_ALLColorLED",
                                    "param_1": {
                                        "position": "1",
                                        "type": "11",
                                        "value": "2"
                                    },
                                    "param_3": {
                                        "position": "3",
                                        "type": "13",
                                        "value": "#ffff00"
                                    },
                                    "x": "6062.29",
                                    "y": "458.571"
                                },
                                "type": "15"
                            },
                            "substack2": {
                                "item_0000000028": {
                                    "disabled": "0",
                                    "opcode": "control_ifelse",
                                    "param_1": {
                                        "item_0000000014": {
                                            "disabled": "0",
                                            "opcode": "operator_logic",
                                            "param_0": {
                                                "item_0000000013": {
                                                    "blocktype": 5,
                                                    "opcode": "variable_oaval",
                                                    "varname": "oaval",
                                                    "x": "6113.29",
                                                    "y": "548.571"
                                                },
                                                "opcode": "variable_oaval",
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
                                                "value": "9"
                                            },
                                            "x": "6093.29",
                                            "y": "543.571"
                                        },
                                        "opcode": "operator_logic",
                                        "position": "1",
                                        "type": "12"
                                    },
                                    "substack1": {
                                        "item_0000000015": {
                                            "disabled": "0",
                                            "opcode": "MakerLED_ALLColorLED",
                                            "param_1": {
                                                "position": "1",
                                                "type": "11",
                                                "value": "2"
                                            },
                                            "param_3": {
                                                "position": "3",
                                                "type": "13",
                                                "value": "#ffd200"
                                            },
                                            "x": "6082.29",
                                            "y": "598.571"
                                        },
                                        "type": "15"
                                    },
                                    "substack2": {
                                        "item_0000000027": {
                                            "disabled": "0",
                                            "opcode": "control_ifelse",
                                            "param_1": {
                                                "item_0000000017": {
                                                    "disabled": "0",
                                                    "opcode": "operator_logic",
                                                    "param_0": {
                                                        "item_0000000016": {
                                                            "blocktype": 5,
                                                            "opcode": "variable_oaval",
                                                            "varname": "oaval",
                                                            "x": "6133.29",
                                                            "y": "688.571"
                                                        },
                                                        "opcode": "variable_oaval",
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
                                                        "value": "7"
                                                    },
                                                    "x": "6113.29",
                                                    "y": "683.571"
                                                },
                                                "opcode": "operator_logic",
                                                "position": "1",
                                                "type": "12"
                                            },
                                            "substack1": {
                                                "item_0000000018": {
                                                    "disabled": "0",
                                                    "opcode": "MakerLED_ALLColorLED",
                                                    "param_1": {
                                                        "position": "1",
                                                        "type": "11",
                                                        "value": "2"
                                                    },
                                                    "param_3": {
                                                        "position": "3",
                                                        "type": "13",
                                                        "value": "#ff8c00"
                                                    },
                                                    "x": "6102.29",
                                                    "y": "738.571"
                                                },
                                                "type": "15"
                                            },
                                            "substack2": {
                                                "item_0000000026": {
                                                    "disabled": "0",
                                                    "opcode": "control_ifelse",
                                                    "param_1": {
                                                        "item_0000000020": {
                                                            "disabled": "0",
                                                            "opcode": "operator_logic",
                                                            "param_0": {
                                                                "item_0000000019": {
                                                                    "blocktype": 5,
                                                                    "opcode": "variable_oaval",
                                                                    "varname": "oaval",
                                                                    "x": "6153.29",
                                                                    "y": "828.571"
                                                                },
                                                                "opcode": "variable_oaval",
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
                                                                "value": "6"
                                                            },
                                                            "x": "6133.29",
                                                            "y": "823.571"
                                                        },
                                                        "opcode": "operator_logic",
                                                        "position": "1",
                                                        "type": "12"
                                                    },
                                                    "substack1": {
                                                        "item_0000000021": {
                                                            "disabled": "0",
                                                            "opcode": "MakerLED_ALLColorLED",
                                                            "param_1": {
                                                                "position": "1",
                                                                "type": "11",
                                                                "value": "2"
                                                            },
                                                            "param_3": {
                                                                "position": "3",
                                                                "type": "13",
                                                                "value": "#ff6400"
                                                            },
                                                            "x": "6122.29",
                                                            "y": "878.571"
                                                        },
                                                        "type": "15"
                                                    },
                                                    "substack2": {
                                                        "item_0000000025": {
                                                            "disabled": "0",
                                                            "opcode": "control_ifelse",
                                                            "param_1": {
                                                                "item_0000000023": {
                                                                    "disabled": "0",
                                                                    "opcode": "operator_logic",
                                                                    "param_0": {
                                                                        "item_0000000022": {
                                                                            "blocktype": 5,
                                                                            "opcode": "variable_oaval",
                                                                            "varname": "oaval",
                                                                            "x": "6173.29",
                                                                            "y": "968.571"
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
                                                                        "opcode": "CGraphicsTextItem",
                                                                        "position": "2",
                                                                        "type": "10",
                                                                        "value": "5"
                                                                    },
                                                                    "x": "6153.29",
                                                                    "y": "963.571"
                                                                },
                                                                "opcode": "operator_logic",
                                                                "position": "1",
                                                                "type": "12"
                                                            },
                                                            "substack1": {
                                                                "item_0000000024": {
                                                                    "disabled": "0",
                                                                    "opcode": "MakerLED_ALLColorLED",
                                                                    "param_1": {
                                                                        "position": "1",
                                                                        "type": "11",
                                                                        "value": "2"
                                                                    },
                                                                    "param_3": {
                                                                        "position": "3",
                                                                        "type": "13",
                                                                        "value": "#ff0000"
                                                                    },
                                                                    "x": "6142.29",
                                                                    "y": "1018.57"
                                                                },
                                                                "type": "15"
                                                            },
                                                            "x": "6122.29",
                                                            "y": "958.571"
                                                        },
                                                        "type": "16"
                                                    },
                                                    "x": "6102.29",
                                                    "y": "818.571"
                                                },
                                                "type": "16"
                                            },
                                            "x": "6082.29",
                                            "y": "678.571"
                                        },
                                        "type": "16"
                                    },
                                    "x": "6062.29",
                                    "y": "538.571"
                                },
                                "type": "16"
                            },
                            "x": "6042.29",
                            "y": "398.571"
                        },
                        "type": "16"
                    },
                    "x": "6022.29",
                    "y": "258.571"
                },
                "type": "16"
            },
            "x": "6002.29",
            "y": "118.571"
        }
    },
    "top_3": {
        "item_0000000032": {
            "blocktype": 5,
            "opcode": "variable_A",
            "varname": "A",
            "x": "3969",
            "y": "281"
        }
    },
    "top_4": {
        "item_0000000033": {
            "blocktype": 5,
            "opcode": "variable_B",
            "varname": "B",
            "x": "4031",
            "y": "284"
        }
    },
    "top_5": {
        "item_0000000034": {
            "blocktype": 5,
            "opcode": "variable_a",
            "varname": "a",
            "x": "3935",
            "y": "345"
        }
    },
    "top_6": {
        "item_0000000035": {
            "blocktype": 5,
            "opcode": "variable_b",
            "varname": "b",
            "x": "4026",
            "y": "354"
        }
    },
    "top_7": {
        "item_0000000036": {
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
                "value": "4"
            },
            "param_2": {
                "opcode": "CGraphicsTextItem",
                "position": "2",
                "type": "10",
                "value": ""
            },
            "x": "4138",
            "y": "214"
        }
    },
    "top_8": {
        "item_0000000037": {
            "blocktype": 5,
            "opcode": "variable_oaval",
            "varname": "oaval",
            "x": "3984",
            "y": "204"
        }
    },
    "top_9": {
        "item_0000000038": {
            "disabled": "0",
            "opcode": "MakerSensor_InfreadDistance",
            "param_1": {
                "position": "1",
                "type": "11",
                "value": "1"
            },
            "x": "4109",
            "y": "366"
        }
    },
    "varList": [
        "oaval",
        "A",
        "B",
        "a",
        "b",
        "oavalcm"
    ]
}
