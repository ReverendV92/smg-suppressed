
$ambientboost
$mostlyopaque

$modelname weapons/w_smg1

$model SMG1 smg_w_ref
$model Suppressor suppressor_w_ref

$lod 20
{
	replacemodel smg_w_ref smg_w_lod1
	nofacial
}

$surfaceprop weapon

$contents solid

$illumposition 1.162 1.976 -1.269

$cdmaterials models/weapons/w_smg1
$cdmaterials models/weapons/attachments

$attachment "muzzle" "ValveBiped.Weapon_bone" 16.00 0.00 -3.40 rotate 11 -0 -92
$attachment "1" "ValveBiped.Weapon_bone" -2.60 0.50 -0.80 rotate 18 90 -81

$bbox -11.983 -0.553 -8.471 8.398 2.876 5.932

$definebone "ValveBiped" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped" 0.267086 -2.58952 10.171795 78.841283 -102.773508 -9.262035 0 0 0 0 0 0
$definebone "ValveBiped.Weapon_bone" "ValveBiped.Bip01_R_Hand" 5 -1.5 -4.999999 0.000001 0 0 0 0 0 0 0 0

$sequence "idle" {
	w_smg1_anims/idle
	activity "ACT_VM_IDLE" 1
	fps 30
	loop
	walkframe 1 LX
}

$sequence "attack1" {
	w_smg1_anims/attack1
	activity "ACT_RANGE_ATTACK_SMG1" 1
	{ event AE_NPC_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 3002 0 "" }
	{ event 6001 0 "0" }
	fps 20
	walkframe 1 LX
}

$sequence "attackoffcenter" {
	w_smg1_anims/attackoffcenter
	{ event AE_NPC_MUZZLEFLASH 0 "SMG1 MUZZLE" }
	{ event 3002 0 "lefthand" }
	{ event 6001 0 "0" }
	fps 20
	walkframe 1 LX
}

$collisionmodel smg_w_phymodel
{
	$mass 8
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
