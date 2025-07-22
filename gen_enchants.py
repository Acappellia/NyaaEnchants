import json, os, sys, shutil, zipfile

current_path = os.getcwd().replace('\\','/')

ench_list_mc = os.listdir(current_path + '/ench_gen/enchantment_ref')
print(ench_list_mc)

ench_list_ne = os.listdir(current_path + '/data/nel/enchantment')
print(ench_list_ne)

alllist = open(current_path + '/data/ne/function/enchant/add_enchants.mcfunction','w',encoding="utf-8")
template = open(current_path + '/ench_gen/template.mcfunction','r',encoding="utf-8").readlines()
template_store = open(current_path + '/ench_gen/template_store.mcfunction','r',encoding="utf-8").readlines()

for name in ench_list_mc:
    name = name.replace('.json','')
    alllist.write('\nexecute if data storage ne:tmp ench_component."minecraft:stored_enchantments"."minecraft:' + name + '" run function ne:enchant/enchants/' + name)
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
    alllist.write('\nexecute if data storage ne:tmp ench_component."minecraft:stored_enchantments"."nel:' + name + '" run function ne:enchant/enchants/' + name)
    level_file = open(current_path + '/data/nel/enchantment/' + name + '.json','r',encoding="utf-8")
    level_data = json.load(level_file)
    max_level = level_data['max_level']
    with open(current_path + '/data/ne/function/enchant/enchants/' + name + '.mcfunction','w',encoding="utf-8") as new_function:
        for line in template:
            new_function.write(line.replace('$nosuffix_enchantment$', name).replace('$enchantment$', 'nel:' + name).replace('$max_level$',str(max_level)))
    with open(current_path + '/data/ne/function/enchant/enchants_store/' + name + '.mcfunction','w',encoding="utf-8") as new_function:
        for line in template_store:
            new_function.write(line.replace('$enchantment$', 'nel:' + name).replace('$max_level$',str(max_level)))

alllist.close()


#copy files

source = current_path
target = current_path + '/lite_data'

if os.path.exists(target):
    shutil.rmtree(target)

shutil.copytree(source + '/data', target + '/data')
shutil.copy(source + '/pack.mcmeta', target)
shutil.copy(source + '/readme.md', target)

shutil.rmtree(target + '/data/ne')

if os.path.isfile(current_path + '/NyaaEnchantsLite.zip'):
    os.remove(current_path + '/NyaaEnchantsLite.zip')

litezip = zipfile.ZipFile(current_path + '/NyaaEnchantsLite.zip','w',zipfile.ZIP_DEFLATED)
startdir = target
for dirpath, dirnames, filenames in os.walk(startdir):
    for filename in filenames:
        arch_dir = dirpath.removeprefix(startdir).removeprefix('\\')
        litezip.write(os.path.join(arch_dir,filename))
litezip.close()

shutil.rmtree(target)