$modelname "props_warmap\wallposter.mdl"

$staticprop

$bodygroup "Body"
{
	studio "canalmap001_reference.smd"
}

$surfaceprop "wood"

$contents "solid"

$cdmaterials "warmap\models\"

$texturegroup "skinfamilies"
{
	{ "wallmap_1" }
	{ "wallmap_2" }
}


$sequence "idle" {
	"canalmap001_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
