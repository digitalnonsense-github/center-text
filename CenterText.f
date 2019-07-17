# Center Text on Screen

function CenterText {

	ScreenColumns=`tput cols`

	echo "${1}" | awk '
		{
			spaces = ('$ScreenColumns' - length) / 2
			while (spaces-- > 0) printf (" ")
			print
		}'
}

CenterText "Sample Text"
