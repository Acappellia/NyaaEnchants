$item modify entity @s weapon.mainhand \
[\
    {\
        "function": "set_enchantments",\
        "enchantments": {\
            "nel:sharpening": 0\
        },\
        "add": false\
    },\
    {\
        "function": "set_enchantments",\
        "enchantments": {\
            "nel:accuminate": $(level)\
        },\
        "add": false\
    }\
]