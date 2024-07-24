import json, os, sys

current_path = os.getcwd().replace('\\','/')

ench_list_mc = os.listdir(current_path + '/ench_gen/enchantment_ref')
print(ench_list_mc)

ench_list_ne = os.listdir(current_path + '/data/ne/enchantment')
print(ench_list_ne)

alllist = open(current_path + '/data/ne/function/enchant/add_enchants.mcfunction','w',encoding="utf-8")
template = open(current_path + '/ench_gen/template.mcfunction','r',encoding="utf-8").readlines()
template_store = open(current_path + '/ench_gen/template_store.mcfunction','r',encoding="utf-8").readlines()

for name in ench_list_mc:
    name = name.replace('.json','')
    alllist.write('\nexecute if data storage ne:tmp ench_component."minecraft:stored_enchantments".levels."minecraft:' + name + '" run function ne:enchant/enchants/' + name)
    level_file = open(current_path + '/ench_gen/enchantment_ref/' + name + '.json','r',encoding="utf-8")
    level_data = json.load(level_file)
    max_level = level_data['max_level']
    with open(current_path + '/data/ne/function/enchant/enchants/' + name + '.mcfunction','w',encoding="utf-8") as new_function:
        for line in template:
            new_function.write(line.replace('$nosuffix_enchantment$', name).replace('$enchantment$', 'minecraft:' + name).replace('$max_level$',str(max_level)))
    with open(current_path + '/data/ne/function/enchant/enchants_store/' + name + '.mcfunction','w',encoding="utf-8") as new_function:
        for line in template_store:
            new_function.write(line.replace('$enchantment$', 'minecraft:' + name).replace('$max_level$',str(max_level)))

for name in ench_list_ne:
    name = name.replace('.json','')
    alllist.write('\nexecute if data storage ne:tmp ench_component."minecraft:stored_enchantments".levels."ne:' + name + '" run function ne:enchant/enchants/' + name)
    level_file = open(current_path + '/data/ne/enchantment/' + name + '.json','r',encoding="utf-8")
    level_data = json.load(level_file)
    max_level = level_data['max_level']
    with open(current_path + '/data/ne/function/enchant/enchants/' + name + '.mcfunction','w',encoding="utf-8") as new_function:
        for line in template:
            new_function.write(line.replace('$nosuffix_enchantment$', name).replace('$enchantment$', 'ne:' + name).replace('$max_level$',str(max_level)))
    with open(current_path + '/data/ne/function/enchant/enchants_store/' + name + '.mcfunction','w',encoding="utf-8") as new_function:
        for line in template_store:
            new_function.write(line.replace('$enchantment$', 'ne:' + name).replace('$max_level$',str(max_level)))

alllist.close()