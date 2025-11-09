if(image_index == 4){
    game_end()
}

if(keyboard_check(vk_escape)){
    othercooldown = 10
    image_alpha = image_alpha + 0.0275
    cooldown--
    if(cooldown <= 0){
        cooldown = 20
        if(image_index < 4){
           image_index = image_index + 1 
        }
    }
}else{
    cooldown = 20
    image_alpha = image_alpha - 0.0275
    othercooldown--
    if(othercooldown <= 0){
        othercooldown = 10
        if(image_index > 0){
            image_index = image_index - 1
        }
    }
}

if(image_alpha > 1){
    image_alpha = 1
}
if(image_alpha < 0){
    image_alpha = 0
}

if(instance_exists(center)){
    x = center.x - 115
    y = center.y - 113
}