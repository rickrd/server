function ShowStatusBox(Box)
{
	var Element = document.getElementById('server_status_'+Box);
	Element.style.display = 'block';
}

function HideStatusBox(Box)
{
	var Element = document.getElementById('server_status_'+Box);
	Element.style.display = 'none';
}

function initStatusBox()
{
	var x = 1;
	while( document.getElementById('server_status_'+ x) != null )
	{
		HideStatusBox(x);
		x++;
	}
}