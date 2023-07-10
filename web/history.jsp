<%-- 
    Document   : history
    Created on : 26 Jun, 2022, 9:48:37 PM
    Author     : Beast
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>CodePen - spam safe order confirmation</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">


</head>
<body>
<!-- partial:index.partial.html -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />

    <title>
        Order Confirmation
    </title>

    <style type="text/css">

		html { width: 100%; }

		/* Prevents Webkit and Windows Mobile platforms from changing default font sizes. */
		body {
			-webkit-text-size-adjust: none;
			-ms-text-size-adjust: none;
		}

		body {
			margin: 0;
			padding: 0;
		}

		table { border-spacing: 0; }

		/* Resolves the Outlook 2007, 2010, and Gmail td padding issue. */
		table td { border-collapse: collapse; }

		a {
			font-weight: bold;
			color: #1abc9c;
			text-decoration: none;
		}

		/* Forces Hotmail to display emails at full width. */
		.ExternalClass { width: 100%; }

		/* Forces Hotmail to display normal line spacing. */
		.ExternalClass,
		.ExternalClass p,
		.ExternalClass span,
		.ExternalClass font,
		.ExternalClass td,
		.ExternalClass div { line-height: 100%; }

		/* Weird Yahoo links and border bottom */
		.yshortcuts a {
		    border-bottom: none !important;
		}

		@media only screen and (max-width:599px){

			body { width: auto !important; }

			table[class="table600"]{
				width: 480px !important;
				margin: 0 auto !important;
				text-align: center !important;
			}

			img[class="fluid"]{
				display:block !important;
				width: 100% !important;
				max-width: 100% !important;
				height: auto !important;
			}

			table[class="table1-3"]{
				width: 100% !important;
			}

			table[class="header-blocks"]{
				width: 100% !important;
				text-align: center !important;
			}

			table[class="ef-logo"]{
				text-align: center !important;
			}

			td[class="header-thmb"]{
				width: 33.3% !important;
			}

			img[class="social-btn-thmb"]{
				width: 100% !important;
				height: auto !important;
			}

			[class="footer-column"] {
				width: 100% !important;
				text-align: center !important;
			}

			[class="footer-contacts"] {
				width: 100%;
				text-align: center !important;
			}

			[class="table95"] {
				width: 95% !important;
			}

			[class="topBarCol"] {
				width: 100% !important;
				text-align: center !important;
			}

			[class="viewLink"] {
				display: block !important;
				padding: 10px !important;
			}

			[class="mainDate"] {
				text-align: center !important;
			}

			[class="fullWidth"] {
				width: 100% !important;
			}

		}

		@media only screen and (max-width: 500px){

			[class="header-blocks"] {
				display: block !important;
			}

			[class="logo-hours"]{
				display: none !important;
				width: 0 !important;
				overflow: hidden !important;
				float: left !important;
				max-height: 0 !important;
			}

		}

		@media only screen and (max-width: 479px){

			body { width: auto !important; }

			table[class="table600"]{
				width: 390px !important;
			}

			[class="social-btn"] {
				display: block !important;
				width: 100% !important;
			}

			[class="social-btn"] a {
				display: block !important;
				padding: 3px 0 !important;
			}

			[class="social-btn"] img {
				width: auto !important;
			}
			[class="intro"]{
				text-align:center !important;
			}
			[class="order-id"]{
				margin:0 auto !important;
			}
			[class="order-list"] td{
				text-align:center !important;
			}
			[class="order-list"] [class="pr-name"]{
				text-align:left !important;
			}
			[class="order-list-item"]{
				line-height:1.25;
			}
			[class="order-list-item"] td{
				padding-top:15px !important;
			}
			[class="order-list-subtotal"] td{
				text-align:right !important;
			}
			[class="subtotal-val"]{
				padding-right:10px !important;
			}
		}

		@media screen and (max-width: 390px) {

			table[class="table600"]{
				width: 320px !important;
			}

			div[class="note_scale"]{
				font-size: 11px !important;
				line-height: normal !important;
			}

			[class="footer-column"]{
				width: 100% !important;
			}

			[class="header-blocks"] {
				display: none !important;
				width: 0 !important;
				overflow: hidden !important;
				float: left !important;
				max-height: 0 !important;
			}
		}
    </style>
</head>

<body style="margin: 0; padding: 0;">
    <table width="100%" cellspacing="0" cellpadding="0" border="0" bgcolor="#ffffff" style="font-family: Arial, Helvetica, sans-serif; line-height: 1;">
        <tr>
            <td valign="top" align="center">
                <table class="table600" width="600" cellspacing="0" cellpadding="0" border="0" align="center" style="border-collapse: collapse;">
                    <tr>
                        <td height="10" style="font-size: 0; line-height: 0; border-bottom: 3px solid #ff00cc;">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <table class="table1-3" width="187" cellspacing="0" cellpadding="0" border="0" align="left" style="border-collapse: collapse;">
                                <tr>
                                    <td valign="top" align="center">
                                        <table class="ef-logo" cellspacing="0" cellpadding="0" border="0" style="border-collapse: collapse;">
                                            <tr>
                                                <td height="12" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td valign="top">
                                                    <a href="https://www.edenfantasys.dev/-vib4406746?utm_source=newsletter&utm_medium=referral&utm_campaign=order-confirmation" target="_blank" title="EdenFantasys" style="outline: none; display: block;">
                                                        <img src="https://www.edenfantasys.dev/images/newsletter/headers/ef-logo-R.gif" alt="EdenFantasys" width="187" height="31" border="0" style="vertical-align: top;" />
                                                    </a>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>

                            <table class="header-blocks" width="370" cellspacing="0" cellpadding="0" border="0" align="right" style="border-collapse: collapse;">
                                <tr>
                                    <td height="10" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                </tr>

                                <tr>
                                    <td class="header-thmb" valign="top" width="120" align="left">
                                        <a href="https://www.edenfantasys.dev/-vib4406747?utm_source=newsletter&utm_medium=referral&utm_campaign=order-confirmation" target="_blank" title="Shop edenfantasys">
                                            <img src="https://www.edenfantasys.dev/images/newsletter/common/shop.png" alt="Shop edenfantasys" width="120" height="37" border="0" style="vertical-align: top;" />
                                        </a>
                                    </td>

                                    <td width="5" style="font-size: 0; line-height: 0;">&nbsp;</td>

                                    <td class="header-thmb" valign="top" width="120" align="center">
                                        <a href="https://www.edenfantasys.dev/-reviews-vib4406748?utm_source=newsletter&utm_medium=referral&utm_campaign=order-confirmation" target="_blank" title="Reviews by real people">
                                            <img src="https://www.edenfantasys.dev/images/newsletter/common/reviews.png" alt="Reviews by real people" width="120" height="37" border="0" style="vertical-align: top;" />
                                        </a>
                                    </td>

                                    <td width="5" style="font-size: 0; line-height: 0;">&nbsp;</td>

                                    <td class="header-thmb" valign="top" width="120" align="right">
                                        <a href="https://www.edenfantasys.dev/eden-partner-programs-vib4406749?utm_source=newsletter&utm_medium=referral&utm_campaign=order-confirmation" target="_blank" title="Eden partnership make money">
                                            <img src="https://www.edenfantasys.dev/images/newsletter/common/partnership.png" alt="Eden partnership make money" width="120" height="37" border="0" style="vertical-align: top;" />
                                        </a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td height="10" style="font-size: 0; line-height: 0;">&nbsp;</td>
                    </tr>

                    <tr>
                        <td height="1" bgcolor="#99CC00" style="font-size: 0; line-height: 0;">&nbsp;</td>
                    </tr>

                    <tr>
                        <td height="10" style="font-size: 0; line-height: 0;">&nbsp;</td>
                    </tr>

                    <tr>
                        <td class="mainDate" valign="top" align="right" style="font-size: 12px; color: #FF00CC;">
                            <span>
                                May 25, 2017
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td height="20" style="font-size: 0; line-height: 0;">&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td valign="top" align="center">
                <table class="table600" width="600" cellspacing="0" cellpadding="0" border="0" align="center" style="border-collapse: collapse;">
                    
                    <tr>
                        <td valign="top" align="center">
                            <table class="table600" width="600" cellspacing="0" cellpadding="0" border="0" align="center" style="border-collapse: collapse; text-align: left;">
                                <tr>
                                    <td valign="top" style="font-size: 18px; line-height: 1;">
                                        <div>Dear 19701-1742 19701-1742, <span style="white-space: nowrap;">Thank You For Your Order!</span></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" height="10" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign="top" style="font-size: 18px; line-height: 1;">
                                        <span>
                                            Your Order ID is <a style="color: #ff00cc;" href="https://www.edenfantasys.dev/Orders/OrderDetails.aspx?Code=EF5181395&Zip=12345&Country=US"><b>EF5181395</b></a>
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" height="20" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign="top" style="font-size: 15px; line-height: 1.5;">
                                        <span>We have started processing your order. The shipping confirmation will be emailed shortly.</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" style="font-size: 15px; line-height: 1.5;">
                                        <span>We at EdenFantasys value your privacy above all! To view or manage your order please follow the link below.</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" height="20" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign="top" align="center">
                                        <table width="245" cellspacing="0" cellpadding="0" border="0" align="center" style="text-align: center;border-radius: 4px; background-color: #9c0; border: 1px solid #9aca01;box-shadow: 0 2px 0 #66952a;">
                                            <tr>
                                                <td valign="top" style="padding: 10px 20px; font-family: Arial, sans-serif; color: #ffffff; font-size: 18px; text-align: center; letter-spacing: -0.02em;">
                                                    <a href="https://www.edenfantasys.dev/Orders/Search.aspx?Code=EF5181395&Zip=12345&Country=US" target="_blank" title="Confirm subscription" style="text-decoration: none; color: #ffffff">
                                                        View order details
                                                    </a>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" height="20" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    

                     


 

<tr>
    <td>
        <table class="table95" width="100%" cellspacing="0" cellpadding="0" border="0" align="center" style="border-collapse: collapse;">
            <tr>
                <td class="order-list" valign="top">
                    <table width="100%" cellspacing="0" cellpadding="0" border="0" align="center" style="border-collapse: collapse;">
                        <thead>
                            <tr>
                                <td class="pr-name" width="43%" style="border: solid #e0e0e0; border-width: 1px 0; padding: 10px 0; vertical-align: top; color:#999; font-size:12px;">Item Name</td>
                                <td class="pr-price" width="15%" style="border: solid #e0e0e0; border-width: 1px 0; padding: 10px 0; vertical-align: top; text-align: right; color:#999; font-size:12px;" align="right">Price</td>
                                <td class="pr-savings" width="15%" style="border: solid #e0e0e0; border-width: 1px 0; padding: 10px 0; vertical-align: top; text-align: right; color:#999; font-size:12px;" align="right">Savings</td>
                                <td class="pr-qty" width="10%" style="border: solid #e0e0e0; border-width: 1px 0; padding: 10px 0; vertical-align: top; text-align: right; color:#999; font-size:12px;" align="right">Qty</td>
                                <td class="pr-amount" width="17%" style="border: solid #e0e0e0; border-width: 1px 0; padding: 10px 0; vertical-align: top; text-align: right; color:#999; font-size:12px;" align="right">Amount</td>
                            </tr>
                        </thead>
                        <tbody>
                                <tr>
                                    <td colspan="5" style="border-bottom: 1px solid #e0e0e0; padding: 5px 0 10px;" valign="top">
                                        <table class="order-list-item" width="100%" cellspacing="0" cellpadding="0" border="0" align="center" style="border-collapse: collapse; font-size:13px; color:#333;">
                                            <tr>
                                                <td class="pr-name" width="43%" style="padding-top:10px; vertical-align: top; text-align: left" align="left" valign="top">
                                                    <a href="https://www.edenfantasys.dev/sex-toy-accessories/batteries/aaa-battery-single" target="_blank" style="text-decoration:none;">
                                                        <img src="https://cdn2.edenfantasys.com/pi/17DXBE05_thumbnail.jpg" alt="" width="50" height="50" style="border: solid 1px #e0e0e0;" />
                                                        <span style="padding-top:4px; font-size: 11px; color: #f0c; text-decoration: underline; line-height: 50px; vertical-align: top;">17DXBE05</span>
                                                    </a>
                                                </td>
                                                <td width="15%" style="white-space:nowrap; text-align:right; padding-top:10px; vertical-align: top;" valign="top">
                                                    $1.25
                                                </td>
                                                <td width="15%" style="text-align:right; padding-top:10px; color: #cc0000;vertical-align: top;" valign="top">
$1.20                                                </td>
                                                <td width="10%" style="text-align:right; padding-top:10px; vertical-align: top;" valign="top">
                                                    3
                                                </td>
                                                <td width="17%" style="text-align:right; padding-top:10px; vertical-align: top;" valign="top">
                                                    $2.55
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="5" style="border-bottom: 1px solid #e0e0e0; padding: 5px 0 10px;" valign="top">
                                        <table class="order-list-item" width="100%" cellspacing="0" cellpadding="0" border="0" align="center" style="border-collapse: collapse; font-size:13px; color:#333;">
                                                <tr>
                                                    <td class="pr-name" width="43%" style="padding-top:10px; vertical-align: top; text-align: left" align="left" valign="top">
                                                        <a href="https://www.edenfantasys.dev/vibrators/realistic-dildo-vibrators/feel-the-g-gyrating-silicone-vibrator" target="_blank" title="" style="text-decoration:none;">
                                                            <img src="https://cdn2.edenfantasys.com/pi/ET144826_thumbnail.jpg" alt="" width="50" height="50" style="border: solid 1px #e0e0e0;" />
                                                            <span style="padding-top:4px; font-size: 11px; color: #f0c; text-decoration: underline; line-height: 50px; vertical-align: top;">ET144826</span>
                                                        </a>
                                                    </td>
                                                    <td width="15%" style="white-space:nowrap; text-align:right; padding-top:10px; vertical-align: top;" valign="top">
                                                        $59.99
                                                    </td>
                                                    <td width="15%" style="text-align:right; padding-top:10px; color: #cc0000;vertical-align: top;" valign="top"></td>
                                                    <td width="10%" style="text-align:right; padding-top:10px; vertical-align: top;" valign="top"></td>
                                                    <td width="17%" style="text-align:right; padding-top:10px; vertical-align: top;" valign="top"></td>
                                                </tr>
                                            <tr>
                                                <td class="pr-name" width="43%" style="padding-top:15px; vertical-align: top;" valign="top">
                                                    <span style="color: #CC0000">SALE:</span> Save 50% on Selected Items
                                                </td>
                                                <td width="15%" style="white-space:nowrap; text-align:right; padding-top: 10px; vertical-align: top;" valign="top">
$59.99                                                </td>
                                                <td width="15%" style="text-align:right; padding-top: 15px; color: #CC0000;vertical-align: top;" valign="top">
$30.00                                                </td>
                                                <td width="10%" style="text-align:right; padding-top: 15px; vertical-align: top;" valign="top">
                                                    1
                                                </td>
                                                <td width="17%" style="text-align:right; padding-top: 15px; vertical-align: top;" valign="top">
                                                    $29.99
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                        </tbody>
                        <tfoot>
                            <tr>
                                <td colspan="5" style="padding: 10px 0 15px;" valign="top">
                                    <table class="order-list-subtotal" cellspacing="0" cellpadding="0" border="0" align="right" style="border-collapse: collapse; font-size:13px; color:#333; text-align:right;">
                                        <tr>
                                            <td style="padding-top:5px;" valign="top">Subtotal:</td>
                                            <td class="subtotal-val" style="padding:5px 0 0 30px;" valign="top">$32.54</td>
                                        </tr>
                                        <tr>
                                            <td style="padding-top:5px;" valign="top">Tax:</td>
                                            <td class="subtotal-val" style="padding:5px 0 0 30px;" valign="top">$0.00</td>
                                        </tr>
                                        <tr>
                                            <td style="padding-top:5px;" valign="top">Shipping:</td>
                                            <td class="subtotal-val" style="padding:5px 0 0 30px;" valign="top">$7.00</td>
                                        </tr>
                                        <tr>
                                            <td style="padding-top:5px;" valign="top"><b>TOTAL:</b></td>
                                            <td class="subtotal-val" style="padding:5px 0 0 30px;" valign="top"><b>$39.54</b></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="1" bgcolor="#e0e0e0" style="font-size: 0; line-height: 0;">&nbsp;</td>
            </tr>
            <tr>
                <td valign="top" height="25" style="font-size: 0; line-height: 0;">&nbsp;</td>
            </tr>
        </table>
    </td>
</tr>





<tr>
    <td valign="top" align="center">
        <table class="table95" width="100%" cellspacing="0" cellpadding="0" border="0" align="center" style="border-collapse: collapse;">
            <tr>
                <td class="shipping-info" valign="top">
                    <table class="fullWidth" width="290" cellspacing="0" cellpadding="0" border="0" align="left" style="border-collapse: collapse; font-size:13px; line-height:1.5;color:#333;">
                        <tr>
                            <td valign="top"><b>Shipping address</b></td>
                        </tr>
                        <tr>
                            <td valign="top" height="10" style="font-size: 0; line-height: 0;">&nbsp;</td>
                        </tr>
                        <tr>
                            <td valign="top">
19701-1742 19701-1742<br />
308 CONNOR BLVD, PESOTO LLC MD907684 
PESOTO LLC MD907684                                        <br />Chisinau 
DE 
12345 
US                            </td>
                        </tr>
                    </table>

                        <table width="1" cellspacing="0" cellpadding="0" border="0" align="left" style="border-collapse: collapse;">
                            <tr>
                                <td valign="top" height="20" style="font-size: 0; line-height: 0;">&nbsp;</td>
                            </tr>
                        </table>
                        <table class="fullWidth" width="290" cellspacing="0" cellpadding="0" border="0" align="right" style="border-collapse: collapse; font-size:13px; line-height:1.5;color:#333;">
                            <tr>
                                <td valign="top"><b>Shipping service</b></td>
                            </tr>
                            <tr>
                                <td valign="top" height="10" style="font-size: 0; line-height: 0;">&nbsp;</td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    Shipping service: Expedite<br />
                                    Expected delivery: Friday, June 02<br />
                                    Shipment confirmation:
asolovei@edenfantasys.com                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td valign="top" height="20" style="font-size: 0; line-height: 0;">&nbsp;</td>
                </tr>
                <tr>
                    <td class="shipping-info" valign="top">
                        <table class="fullWidth" width="290" cellspacing="0" cellpadding="0" border="0" align="left" style="border-collapse: collapse; font-size:13px; line-height:1.5;color:#333;">
                            <tr>
                                <td valign="top"><b>Billing address</b></td>
                            </tr>
                            <tr>
                                <td valign="top" height="10" style="font-size: 0; line-height: 0;">&nbsp;</td>
                            </tr>
                            <tr>
                                <td valign="top">
19701-1742 19701-1742<br />
308 CONNOR BLVD, PESOTO LLC MD907684 PESOTO LLC MD907684 
                                        <br />Chisinau 
DE 
12345 
US                                        <br />asolovei@edenfantasys.com<br />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td valign="top" height="25" style="font-size: 0; line-height: 0;">&nbsp;</td>
                </tr>
                <tr>
                    <td height="1" bgcolor="#e0e0e0" style="font-size: 0; line-height: 0;">&nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>

                    <tr>
                        <td valign="top" align="center">
                            <table class="table95" width="100%" cellspacing="0" cellpadding="0" border="0" align="center" style="border-collapse: collapse;">
                                <tr>
                                    <td valign="top" height="25" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td valign="top">
                                        <table width="100%" cellspacing="0" cellpadding="0" border="0" align="center" style="border-collapse: collapse; font-size:13px; line-height:1.5;color:#333;">
                                            <tr>
                                                <td valign="top"><b>Payment</b></td>
                                            </tr>
                                            <tr>
                                                <td valign="top" height="10" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td valign="top">
                                                        <p>
                                                            Your order is being authorized and charged. To preserve customer privacy, your credit card statement will reflect
                                                            our charge under the name of WEB MERCHANTS INC. If you cancel your order in-full or partially, the refund will be automatically issued and posted to your
                                                            card next business day. All credit card transactions are verified for security purposes prior to processing orders.
                                                        </p>
                                                    
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="top" height="25" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td height="1" bgcolor="#e0e0e0" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td valign="top" height="25" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td valign="top">
                                                    Thank you for selecting our site for your purchases.<br /> As always, we strive to bring you a pleasant and secure shopping experience.
                                                </td>
                                            </tr>
                                            <tr>
                                                <td valign="top" height="25" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="support-info" style="margin-top:10px; padding-top:10px;font-size:14px;">
                                                    <div class="support-row">
                                                        Need help with anything?<br />

                                                            <b>+1 (770) 604 - 1352</b>
                                                            <span>(</span> 8am - 2pm EST, Monday - Saturday <span>)</span>
                                                            <br/>

                                                        Submit <a href="https://www.edenfantasys.dev/SignIn.aspx?referer=https://www.edenfantasys.dev/STS/CreateTicketByCustWiz.aspx" target="_blank" style="color: #ff00cc; font-weight: bold; text-decoration: underline;">your inquiry</a>
                                                    </div>
                                                    <div class="support-row" style="margin-top:20px;">
                                                        Your friends at <span style="white-space:nowrap;"><span style="color:#90b718;">Eden</span><span style="color:#ff00cc;">Fantasys</span></span>
                                                    </div>Contact 
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" height="15" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td valign="top" align="center">
                <table class="table600" width="600" cellspacing="0" cellpadding="0" border="0" align="center" style="border-collapse: collapse;">
                    <tr>
                        <td valign="top">
                            <table width="100%" cellspacing="0" cellpadding="0" border="0" align="center" style="border-collapse: collapse;">
                                <tr>
                                    <td class="social-btn" valign="top" width="33%" align="center" bgcolor="#0154a0">
                                        <a href="https://www.edenfantasys.dev/welcome-to-facebook-log-in-sign-up-or-vib4394662" target="_blank" title="Find us on Facebook" style="color: #ffffff;">
                                            <img class="fluid" src="https://www.edenfantasys.dev/images/newsletter/common/fb.jpg" alt="Find us on Facebook" width="200" height="38" border="0" style="vertical-align: top;" />
                                        </a>
                                    </td>

                                    <td class="social-btn" valign="top" width="33%" align="center" bgcolor="#f03f37">
                                        <a href="https://www.edenfantasys.dev/edenfantasys-google--vib4394663" target="_blank" title="Find us on Google+" style="color: #ffffff;">
                                            <img class="fluid" src="https://www.edenfantasys.dev/images/newsletter/common/google.jpg" alt="Find us on Google+" width="200" height="38" border="0" style="vertical-align: top;" />
                                        </a>
                                    </td>

                                    <td class="social-btn" valign="top" width="33%" align="center" bgcolor="#01aef0">
                                        <a href="https://www.edenfantasys.dev/twitter-vib4394661" target="_blank" title="Follow us on Twitter" style="color: #ffffff;">
                                            <img class="fluid" src="https://www.edenfantasys.dev/images/newsletter/common/twitter.jpg" alt="Follow us on Twitter" width="200" height="38" border="0" style="vertical-align: top;" />
                                        </a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <tr>
                        <td height="3" bgcolor="#e4ddd1" style="font-size: 0; line-height: 0;">&nbsp;</td>
                    </tr>

                    <tr>
                        <td>
                            <table width="100%" cellspacing="0" cellpadding="0" border="0" bgcolor="#ede8df" style="border-collapse: collapse;">
                                <tr>
                                    <td height="25" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                </tr>

                                <tr>
                                    <td valign="top" class="footer-columns" align="center" style="padding: 0 10px">
                                        <table class="footer-column" width="50%" cellspacing="0" cellpadding="0" border="0" align="left" style="border-collapse: collapse; font-size:12px; color:#333;">
                                            <tr>
                                                <td style="font-size: 14px; font-weight: bold; color: #544F45;">
                                                    Help
                                                </td>
                                            </tr>

                                            <tr>
                                                <td height="15" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                            </tr>

                                            <tr>
                                                <td valign="top">
                                                    <a href="https://www.edenfantasys.dev/Orders/Search.aspx?Code=EF5181395&Zip=12345&Country=US" target="_blank" title="Order Status" style="font-weight: bold; color:#333;text-decoration: underline;">
                                                        Order status
                                                    </a>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td height="7" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                            </tr>

                                            <tr>
                                                <td valign="top">
                                                    <a href="https://www.edenfantasys.dev/shipping-policy-shopping-information--vib4415191?utm_source=newsletter&utm_medium=referral&utm_campaign=order-confirmation" target="_blank" title="Shipping" style="font-weight: bold;color:#333; text-decoration: underline;">
                                                        Shipping
                                                    </a>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td height="7" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                            </tr>

                                            <tr>
                                                <td valign="top">
                                                    <a href="https://www.edenfantasys.dev/return-policy-shopping-information--vib4415192?utm_source=newsletter&utm_medium=referral&utm_campaign=order-confirmation" target="_blank" title="Returns" style="font-weight: bold;color:#333; text-decoration: underline;">
                                                        Returns
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="7" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                            </tr>

                                            <tr>
                                                <td valign="top">
                                                    <a href="https://www.edenfantasys.dev/terms-and-conditions-shopping-vib4415193?utm_source=newsletter&utm_medium=referral&utm_campaign=order-confirmation" target="_blank" title="Terms and Conditions" style="font-weight: bold; color:#333; text-decoration: underline;">
                                                        Terms and Conditions
                                                    </a>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td height="25" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                            </tr>
                                        </table>

                                        <table class="footer-contacts" width="50%" cellspacing="0" cellpadding="0" border="0" align="right" style="border-collapse: collapse; font-size:12px; ">
                                            <tr>
                                                <td valign="top" style="font-size: 14px; font-weight: bold; color: #544F45;">
                                                    Contact us
                                                </td>
                                            </tr>

                                            <tr>
                                                <td height="15" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                            </tr>

                                            <tr>
                                                <td valign="top">
                                                    <span style="color: #544f45;line-height:1.35;">
                                                        Edenfantasys.com, Web Merchants, Inc. <br />
                                                        640 Airport South Parkway. Suite 400 <br />
                                                        Atlanta, GA 30349 <br />
                                                    </span>



                                                </td>
                                            </tr>

                                            <tr>
                                                <td height="5" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                            </tr>

                                            <tr>
                                                <td height="5" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                            </tr>

                                            <tr>
                                                <td valign="top">
                                                    <span style="line-height:1.35; color: #544f45;">
                                                        Fax: (609) 920-0332 <br />
                                                    </span>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>

                                <tr>
                                    <td height="7" style="font-size: 0; line-height: 0;">&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>
<!-- partial -->
  
</body>
</html>

