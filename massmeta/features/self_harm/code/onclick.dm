/mob/living/carbon/human/UnarmedAttack(atom/attack_target, proximity_flag, list/modifiers)
	// Do not allow punch yourself!!
	if(src == attack_target  && !do_self_harm)
		return FALSE
	return ..()
