$modelname "props_warmap\wallmap.mdl"

$staticprop

$bodygroup "Body"
{
	studio "canalmap001_reference.smd"
}

$surfaceprop "wood"

$contents "solid"

$illumposition 0 1.159 38

$cdmaterials "warmap\models\"

$sequence "idle" {
	"canalmap001_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
