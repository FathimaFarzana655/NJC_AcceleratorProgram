type currency = String {format: "#,###.00"}

fun formatAmount(amount:Number, region:String):Object =
	if (region == "US")
		{amountUSFormatted: amount as Number as currency }
	else if (region == "EU")
		{amountEUFormatted: amount as Number as currency replace "," with "_" replace "." with "," replace "_" with "." } 
	else
	{}