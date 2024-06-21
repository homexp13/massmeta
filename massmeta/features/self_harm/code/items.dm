/// Anything you can pick up and hold.
/obj/item
	var/allow_anti_self_harm = FALSE

/obj/item/melee_attack_chain(mob/user, atom/target, params)
	if(target == user && !user.do_self_harm && allow_anti_self_harm)
		return
	return ..()

/obj/item/melee
	allow_anti_self_harm = TRUE

/obj/item/fireaxe
	allow_anti_self_harm = TRUE

/obj/item/nullrod
	allow_anti_self_harm = TRUE

/obj/item/spear
	allow_anti_self_harm = TRUE

/obj/item/knife
	allow_anti_self_harm = TRUE
