data merge entity @s {ReapplicationDelay:20,Duration:600,RadiusOnUse:-0.5f,potion_duration_scale:0.25f,WaitTime:10,DurationOnUse:0,RadiusPerTick:-0.005f}

data modify entity @s Owner set from storage nel:tmp arrow_data.Owner
data modify entity @s potion_contents set value {potion:"minecraft:water"}
data modify entity @s potion_contents set from storage nel:tmp arrow_data.item.components."minecraft:potion_contents"

execute if data storage nel:tmp arrow_data.item{id:"minecraft:spectral_arrow"} run data merge entity @s {potion_contents:{custom_color:16776960,custom_effects:[{id:"glowing",duration:200,amplifier:0}]}}