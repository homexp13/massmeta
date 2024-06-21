#define COMSIG_KB_MOB_SELFHARM "keybind_selfharm"

/datum/keybinding/mob/toggle_self_harm
	hotkey_keys = list("Numpad0")
	name = "toggle_self_harm"
	full_name = "Toggle self harm"
	description = "Toggle being able to hit yourself by a melee weapon"
	keybind_signal = COMSIG_KB_MOB_SELFHARM

/datum/keybinding/mob/toggle_self_harm/down(client/user)
	. = ..()
	if(.)
		return .

	user.mob.do_self_harm = !user.mob.do_self_harm
	user.mob.balloon_alert(user.mob, "You can [user.mob.do_self_harm ? "now" : "no longer"] hit yourself")

#undef COMSIG_KB_MOB_SELFHARM
