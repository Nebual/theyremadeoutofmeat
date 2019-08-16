data:extend({
    {
        type = "recipe",
        name = "bone-bullets",
        enabled = false,
        energy_required = 5,
        ingredients = {{"meat-bones", 10}},
        result = "bone-bullets"
    },
    {
        type = "ammo",
        name = "bone-bullets",
        icon = "__TheyreMadeOutofMeat__/graphics/icons/bone-bullets.png",
        icon_size = 32,
        ammo_type = {
            category = "bullet",
            action = {
                {
                    type = "direct",
                    action_delivery = {
                        {
                            type = "instant",
                            source_effects = {
                                {
                                    type = "create-explosion",
                                    entity_name = "explosion-gunshot"
                                }
                            },
                            target_effects = {
                                {
                                    type = "create-entity",
                                    entity_name = "blood-explosion-small" --"explosion-hit"
                                },
                                {
                                    type = "damage",
                                    damage = {amount = 7, type = "physical"}
                                }
                            }
                        }
                    }
                }
            }
        },
        magazine_size = 25,
        subgroup = "ammo",
        order = "a[basic-clips]-a[firearm-magazine-bone]",
        stack_size = 200
    }
})
