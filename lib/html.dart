const html = """
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<title>
		学生课表
	</title>
	<link type="text/css" href="../../style/master.css" rel="stylesheet" />

	<script language="javascript" src="../../public.js" type="text/javascript"></script>
	<script language=javascript>
		function js_callpage5(s) {
        if (s == 1)
             JsMod(htmlurl);
    }
	</script>
</head>

<body topmargin="0" leftmargin="0" style="overflow-x: hidden; overflow-y: auto" oncontextmenu="return false">
	<form method="post" action="./XsKB_List.aspx" id="form1">
		<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTg1OTA2NjU2Mg9kFgICAw9kFghmDxAPFgYeDkRhdGFWYWx1ZUZpZWxkBQVYTlhRSB4NRGF0YVRleHRGaWVsZAUEWE5YUR4LXyFEYXRhQm91bmRnZBAVNAsyMDI0LTIwMjUtMgsyMDI0LTIwMjUtMQsyMDIzLTIwMjQtMgsyMDIzLTIwMjQtMQsyMDIyLTIwMjMtMgsyMDIyLTIwMjMtMQsyMDIxLTIwMjItMgsyMDIxLTIwMjItMQsyMDIwLTIwMjEtMgsyMDIwLTIwMjEtMQsyMDE5LTIwMjAtMgsyMDE5LTIwMjAtMQsyMDE4LTIwMTktMgsyMDE4LTIwMTktMQsyMDE3LTIwMTgtMgsyMDE3LTIwMTgtMQsyMDE2LTIwMTctMgsyMDE2LTIwMTctMQsyMDE1LTIwMTYtMgsyMDE1LTIwMTYtMQsyMDE0LTIwMTUtMgsyMDE0LTIwMTUtMQsyMDEzLTIwMTQtMgsyMDEzLTIwMTQtMQsyMDEyLTIwMTMtMgsyMDEyLTIwMTMtMQsyMDExLTIwMTItMgsyMDExLTIwMTItMQsyMDEwLTIwMTEtMgsyMDEwLTIwMTEtMQsyMDA5LTIwMTAtMgsyMDA5LTIwMTAtMQsyMDA4LTIwMDktMgsyMDA4LTIwMDktMQsyMDA3LTIwMDgtMgsyMDA3LTIwMDgtMQsyMDA2LTIwMDctMgsyMDA2LTIwMDctMQsyMDA1LTIwMDYtMgsyMDA1LTIwMDYtMQsyMDA0LTIwMDUtMgsyMDA0LTIwMDUtMQsyMDAzLTIwMDQtMgsyMDAzLTIwMDQtMQsyMDAyLTIwMDMtMgsyMDAyLTIwMDMtMQsyMDAxLTIwMDItMgsyMDAxLTIwMDItMQsyMDAwLTIwMDEtMgsyMDAwLTIwMDEtMQsxOTk5LTIwMDAtMgsxOTk5LTIwMDAtMRU0CzIwMjQtMjAyNS0yCzIwMjQtMjAyNS0xCzIwMjMtMjAyNC0yCzIwMjMtMjAyNC0xCzIwMjItMjAyMy0yCzIwMjItMjAyMy0xCzIwMjEtMjAyMi0yCzIwMjEtMjAyMi0xCzIwMjAtMjAyMS0yCzIwMjAtMjAyMS0xCzIwMTktMjAyMC0yCzIwMTktMjAyMC0xCzIwMTgtMjAxOS0yCzIwMTgtMjAxOS0xCzIwMTctMjAxOC0yCzIwMTctMjAxOC0xCzIwMTYtMjAxNy0yCzIwMTYtMjAxNy0xCzIwMTUtMjAxNi0yCzIwMTUtMjAxNi0xCzIwMTQtMjAxNS0yCzIwMTQtMjAxNS0xCzIwMTMtMjAxNC0yCzIwMTMtMjAxNC0xCzIwMTItMjAxMy0yCzIwMTItMjAxMy0xCzIwMTEtMjAxMi0yCzIwMTEtMjAxMi0xCzIwMTAtMjAxMS0yCzIwMTAtMjAxMS0xCzIwMDktMjAxMC0yCzIwMDktMjAxMC0xCzIwMDgtMjAwOS0yCzIwMDgtMjAwOS0xCzIwMDctMjAwOC0yCzIwMDctMjAwOC0xCzIwMDYtMjAwNy0yCzIwMDYtMjAwNy0xCzIwMDUtMjAwNi0yCzIwMDUtMjAwNi0xCzIwMDQtMjAwNS0yCzIwMDQtMjAwNS0xCzIwMDMtMjAwNC0yCzIwMDMtMjAwNC0xCzIwMDItMjAwMy0yCzIwMDItMjAwMy0xCzIwMDEtMjAwMi0yCzIwMDEtMjAwMi0xCzIwMDAtMjAwMS0yCzIwMDAtMjAwMS0xCzE5OTktMjAwMC0yCzE5OTktMjAwMC0xFCsDNGdnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2cWAWZkAgIPEGQQFRUG5YWo6YOoB+esrDHlkagH56ysMuWRqAfnrKwz5ZGoB+esrDTlkagH56ysNeWRqAfnrKw25ZGoB+esrDflkagH56ysOOWRqAfnrKw55ZGoCOesrDEw5ZGoCOesrDEx5ZGoCOesrDEy5ZGoCOesrDEz5ZGoCOesrDE05ZGoCOesrDE15ZGoCOesrDE25ZGoCOesrDE35ZGoCOesrDE45ZGoCOesrDE55ZGoCOesrDIw5ZGoFRUAATEBMgEzATQBNQE2ATcBOAE5AjEwAjExAjEyAjEzAjE0AjE1AjE2AjE3AjE4AjE5AjIwFCsDFWdnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZxYBZmQCBA8PFgIeBFRleHRlZGQCBQ8WAh4JaW5uZXJodG1sBbNPIDx0YWJsZSBib3JkZXI9MSB3aWR0aD05OCUgaGVpZ2h0PTgwJSBib3JkZXJjb2xvcmxpZ2h0PSM1ODhGQzcgY2VsbHNwYWNpbmc9MCBjZWxscGFkZGluZz0wIGJvcmRlcmNvbG9yPSM1ODhGQzcgYm9yZGVyY29sb3JkYXJrPSNmZmZmZmYgaGVpZ2h0PTg4Pjx0cj48dGQgd2lkdGg9OTAgaGVpZ2h0PTI4IGFsaWduPWNlbnRlcj48YSBocmVmPSMgb25jbGljaz0nd2luZG93LnByaW50KCknPuaJk+WNsOivvuihqDwvYT48L3RkPjx0ZCB3aWR0aD0xMzAgaGVpZ2h0PTI4IGFsaWduPWNlbnRlcj7mmJ/mnJ/kuIAgPC90ZD48dGQgd2lkdGg9MTMwIGhlaWdodD0yOCBhbGlnbj1jZW50ZXI+5pif5pyf5LqMIDwvdGQ+PHRkIHdpZHRoPTEzMCBoZWlnaHQ9MjggYWxpZ249Y2VudGVyPuaYn+acn+S4iSA8L3RkPjx0ZCB3aWR0aD0xMzAgaGVpZ2h0PTI4IGFsaWduPWNlbnRlcj7mmJ/mnJ/lm5sgPC90ZD48dGQgd2lkdGg9MTMwIGhlaWdodD0yOCBhbGlnbj1jZW50ZXI+5pif5pyf5LqUIDwvdGQ+PHRkIHdpZHRoPTEzMCBoZWlnaHQ9MjggYWxpZ249Y2VudGVyPuaYn+acn+WFrSA8L3RkPjx0ZCB3aWR0aD0xMzAgaGVpZ2h0PTI4IGFsaWduPWNlbnRlcj7mmJ/mnJ/lpKkgPC90ZD48L3RyPiA8dHI+PHRkIHdpZHRoPTkwIGhlaWdodD0yOCBhbGlnbj1sZWZ0PuesrOS4gOS6jOiKgiZuYnNwOzwvdGQ+PHRkIHdpZHRoPTkwIGhlaWdodD0yOCBhbGlnbj0nY2VudGVyJyA+PG5vYnI+ICZuYnNwOyZuYnNwOzxhIGhyZWY9JyMnIHRpdGxlPSflvIDor77nvJblj7fvvJoyMDI0NDAwMzE1NQror77nqIvnvJbnoIHvvJowNTAwMDAxMAror77nqIvlkI3np7DvvJrlpKflraboi7Hor60yCuaOiOivvuaVmeW4iO+8mueGiuWHr+iOiQrlvIDor77ml7bpl7TvvJoxMDEwMgrkuIror77lkajmrKHvvJoxLTEyLDE1CuW8gOivvuWcsOeCue+8mjUtMjAzCuS4iuivvuePree6p++8mjI0MTEzQSwyNDExM0InPuWkp+WtpuiLseivrTI8YnI+54aK5Yev6I6JPGJyPjEtMTIsMTU8YnI+NS0yMDM8YnI+MjQxMTNBLDI0MTEzQjwvYT48L25vYnI+PC90ZD48dGQgd2lkdGg9OTAgaGVpZ2h0PTI4IGFsaWduPSdjZW50ZXInID48bm9icj4gJm5ic3A7Jm5ic3A7PGEgaHJlZj0nIycgdGl0bGU9J+W8gOivvue8luWPt++8mjIwMjQ0MDAzMjExCuivvueoi+e8luegge+8mjAxMDAwNjUzCuivvueoi+WQjeensO+8muWFrOW3rumFjeWQiOS4juaVsOWtl+WMlua1i+mHj+aKgOacrwrmjojor77mlZnluIjvvJrog6HojaPmnpcK5byA6K++5pe26Ze077yaMjAxMDIK5LiK6K++5ZGo5qyh77yaMS04CuW8gOivvuWcsOeCue+8mjktMTIzCuS4iuivvuePree6p++8mjI0MTEzQSwyNDExM0InPuWFrOW3rumFjeWQiOS4juaVsOWtl+WMlua1i+mHj+aKgOacrzxicj7og6HojaPmnpc8YnI+MS04PGJyPjktMTIzPGJyPjI0MTEzQSwyNDExM0I8L2E+PC9ub2JyPjwvdGQ+PHRkIHdpZHRoPTkwIGhlaWdodD0yOCBhbGlnbj0nY2VudGVyJyA+PG5vYnI+ICZuYnNwOyZuYnNwOzxhIGhyZWY9JyMnIHRpdGxlPSflvIDor77nvJblj7fvvJoyMDI0NDAwMzE0Nwror77nqIvnvJbnoIHvvJowNTAwMDMwNAror77nqIvlkI3np7DvvJrlpKflrabkvZPogrIyCuaOiOivvuaVmeW4iO+8muiwoua0geeQvArlvIDor77ml7bpl7TvvJozMDEwMgrkuIror77lkajmrKHvvJoxLTEyLDE1CuW8gOivvuWcsOeCue+8mjktMTMzCuS4iuivvuePree6p++8mjI0MTEzQSwyNDExM0InPuWkp+WtpuS9k+iCsjI8YnI+6LCi5rSB55C8PGJyPjEtMTIsMTU8YnI+OS0xMzM8YnI+MjQxMTNBLDI0MTEzQjwvYT48L25vYnI+PC90ZD48dGQgd2lkdGg9OTAgaGVpZ2h0PTI4IGFsaWduPSdjZW50ZXInID48bm9icj4gJm5ic3A7Jm5ic3A7PGEgaHJlZj0nIycgdGl0bGU9J+W8gOivvue8luWPt++8mjIwMjQ0MDAzMTYzCuivvueoi+e8luegge+8mjAyMDAwMjIxCuivvueoi+WQjeensO+8muWkp+Wtpuiuoeeul+acuuWfuuehgArmjojor77mlZnluIjvvJrnhorkuZnnqZcK5byA6K++5pe26Ze077yaNDAxMDIK5LiK6K++5ZGo5qyh77yaMS0xMArlvIDor77lnLDngrnvvJo5LTExOQrkuIror77nj63nuqfvvJoyNDExM0EsMjQxMTNCJz7lpKflraborqHnrpfmnLrln7rnoYA8YnI+54aK5LmZ56mXPGJyPjEtMTA8YnI+OS0xMTk8YnI+MjQxMTNBLDI0MTEzQjwvYT48L25vYnI+PC90ZD48dGQgd2lkdGg9OTAgaGVpZ2h0PTI4IGFsaWduPSdjZW50ZXInID48bm9icj4gJm5ic3A7Jm5ic3A7PC9ub2JyPjwvdGQ+PHRkIHdpZHRoPTkwIGhlaWdodD0yOCBhbGlnbj0nY2VudGVyJyA+PG5vYnI+ICZuYnNwOyZuYnNwOzwvbm9icj48L3RkPjx0ZCB3aWR0aD05MCBoZWlnaHQ9MjggYWxpZ249J2NlbnRlcicgPjxub2JyPiAmbmJzcDsmbmJzcDs8L25vYnI+PC90ZD48L3RyPjx0cj48dGQgd2lkdGg9OTAgaGVpZ2h0PTI4IGFsaWduPWxlZnQ+56ys5LiJ5Zub6IqCJm5ic3A7PC90ZD48dGQgd2lkdGg9OTAgaGVpZ2h0PTI4IGFsaWduPSdjZW50ZXInID48bm9icj4gJm5ic3A7Jm5ic3A7PGEgaHJlZj0nIycgdGl0bGU9J+W8gOivvue8luWPt++8mjIwMjQ0MDAzMTMxCuivvueoi+e8luegge+8mjA2MDAwMjE1Cuivvueoi+WQjeensO+8muWkp+WtpueUn+W/g+eQhuWBpeW6t+aVmeiCsjIK5o6I6K++5pWZ5biI77ya5ZC055CmCuW8gOivvuaXtumXtO+8mjEwMzA0CuS4iuivvuWRqOasoe+8mjEtOArlvIDor77lnLDngrnvvJo5LTE0NArkuIror77nj63nuqfvvJoyNDExM0EsMjQxMTNCJz7lpKflrabnlJ/lv4PnkIblgaXlurfmlZnogrIyPGJyPuWQtOeQpjxicj4xLTg8YnI+OS0xNDQ8YnI+MjQxMTNBLDI0MTEzQjwvYT48L25vYnI+PC90ZD48dGQgd2lkdGg9OTAgaGVpZ2h0PTI4IGFsaWduPSdjZW50ZXInID48bm9icj4gJm5ic3A7Jm5ic3A7PGEgaHJlZj0nIycgdGl0bGU9J+W8gOivvue8luWPt++8mjIwMjQ0MDAzMTg3Cuivvueoi+e8luegge+8mjAxMDAwMDI5Cuivvueoi+WQjeensO+8muW3peeoi+WKm+Wtpgrmjojor77mlZnluIjvvJrlvpDli4cK5byA6K++5pe26Ze077yaMjAzMDQK5LiK6K++5ZGo5qyh77yaMS04CuW8gOivvuWcsOeCue+8mjktMTA1CuS4iuivvuePree6p++8mjI0MTEzQSwyNDExM0InPuW3peeoi+WKm+Wtpjxicj7lvpDli4c8YnI+MS04PGJyPjktMTA1PGJyPjI0MTEzQSwyNDExM0I8L2E+PC9ub2JyPjwvdGQ+PHRkIHdpZHRoPTkwIGhlaWdodD0yOCBhbGlnbj0nY2VudGVyJyA+PG5vYnI+ICZuYnNwOyZuYnNwOzxhIGhyZWY9JyMnIHRpdGxlPSflvIDor77nvJblj7fvvJoyMDI0NDAwMzE3OQror77nqIvnvJbnoIHvvJowMTAwMDA3MAror77nqIvlkI3np7DvvJrorqHnrpfmnLrnu5jlm74K5o6I6K++5pWZ5biI77ya5aec5bqX56WlCuW8gOivvuaXtumXtO+8mjMwMzA0CuS4iuivvuWRqOasoe+8mjEtMTIsMTUK5byA6K++5Zyw54K577yaOS0xMTMK5LiK6K++54+t57qn77yaMjQxMTNBLDI0MTEzQic+6K6h566X5py657uY5Zu+PGJyPuWnnOW6l+elpTxicj4xLTEyLDE1PGJyPjktMTEzPGJyPjI0MTEzQSwyNDExM0I8L2E+PC9ub2JyPjwvdGQ+PHRkIHdpZHRoPTkwIGhlaWdodD0yOCBhbGlnbj0nY2VudGVyJyA+PG5vYnI+ICZuYnNwOyZuYnNwOzxhIGhyZWY9JyMnIHRpdGxlPSflvIDor77nvJblj7fvvJoyMDI0NDAwMzExNQror77nqIvnvJbnoIHvvJowNjAwMDAxMwror77nqIvlkI3np7DvvJrlvaLlir/kuI7mlL/nrZYyCuaOiOivvuaVmeW4iO+8muS/ruivl+iJugrlvIDor77ml7bpl7TvvJo0MDMwNArkuIror77lkajmrKHvvJo1LTgK5byA6K++5Zyw54K577yaOS0xMDMK5LiK6K++54+t57qn77yaMjQxMTNBLDI0MTEzQic+5b2i5Yq/5LiO5pS/562WMjxicj7kv67or5foibo8YnI+NS04PGJyPjktMTAzPGJyPjI0MTEzQSwyNDExM0I8L2E+PC9ub2JyPjwvdGQ+PHRkIHdpZHRoPTkwIGhlaWdodD0yOCBhbGlnbj0nY2VudGVyJyA+PG5vYnI+ICZuYnNwOyZuYnNwOzxhIGhyZWY9JyMnIHRpdGxlPSflvIDor77nvJblj7fvvJoyMDI0NDAwMzE5NQror77nqIvnvJbnoIHvvJowMTAwMDA1Ngror77nqIvlkI3np7DvvJrmnLrmorDorr7orqHln7rnoYAK5o6I6K++5pWZ5biI77ya5pmP54+N5qKFCuW8gOivvuaXtumXtO+8mjUwMzA0CuS4iuivvuWRqOasoe+8mjEtNiw4LTEwLDEyCuW8gOivvuWcsOeCue+8mjktMTIzCuS4iuivvuePree6p++8mjI0MTEzQSwyNDExM0InPuacuuaisOiuvuiuoeWfuuehgDxicj7mmY/nj43mooU8YnI+MS02LDgtMTAsMTI8YnI+OS0xMjM8YnI+MjQxMTNBLDI0MTEzQjwvYT48L25vYnI+PC90ZD48dGQgd2lkdGg9OTAgaGVpZ2h0PTI4IGFsaWduPSdjZW50ZXInID48bm9icj4gJm5ic3A7Jm5ic3A7PC9ub2JyPjwvdGQ+PHRkIHdpZHRoPTkwIGhlaWdodD0yOCBhbGlnbj0nY2VudGVyJyA+PG5vYnI+ICZuYnNwOyZuYnNwOzwvbm9icj48L3RkPjwvdHI+PHRyPjx0ZCB3aWR0aD05MCBoZWlnaHQ9MjggYWxpZ249bGVmdD7nrKzkupTlha3oioImbmJzcDs8L3RkPjx0ZCB3aWR0aD05MCBoZWlnaHQ9MjggYWxpZ249J2NlbnRlcicgPjxub2JyPiAmbmJzcDsmbmJzcDs8YSBocmVmPScjJyB0aXRsZT0n5byA6K++57yW5Y+377yaMjAyNDQwMDM1OTcK6K++56iL57yW56CB77yaMDUwMDAzMDMK6K++56iL5ZCN56ew77ya5aSn5a2m5pWw5a2mMgrmjojor77mlZnluIjvvJrlvKDpuY8K5byA6K++5pe26Ze077yaMTA1MDYK5LiK6K++5ZGo5qyh77yaMS0xMSwxNQrlvIDor77lnLDngrnvvJo5LTEyNArkuIror77nj63nuqfvvJoyNDExM0EsMjQxMTNCJz7lpKflrabmlbDlraYyPGJyPuW8oOm5jzxicj4xLTExLDE1PGJyPjktMTI0PGJyPjI0MTEzQSwyNDExM0I8L2E+PGJyPi0tLS0tLS0tLS0tLTxicj48YSBocmVmPScjJyB0aXRsZT0n5byA6K++57yW5Y+377yaMjAyNDQwMDM1OTcK6K++56iL57yW56CB77yaMDUwMDAzMDMK6K++56iL5ZCN56ew77ya5aSn5a2m5pWw5a2mMgrmjojor77mlZnluIjvvJrlvKDpuY8K5byA6K++5pe26Ze077yaMTA1MDYK5LiK6K++5ZGo5qyh77yaMTMK5byA6K++5Zyw54K577yaNi0yMDIK5LiK6K++54+t57qn77yaMjQxMTNBLDI0MTEzQic+5aSn5a2m5pWw5a2mMjxicj7lvKDpuY88YnI+MTM8YnI+Ni0yMDI8YnI+MjQxMTNBLDI0MTEzQjwvYT48L25vYnI+PC90ZD48dGQgd2lkdGg9OTAgaGVpZ2h0PTI4IGFsaWduPSdjZW50ZXInID48bm9icj4gJm5ic3A7Jm5ic3A7PGEgaHJlZj0nIycgdGl0bGU9J+W8gOivvue8luWPt++8mjIwMjQ0MDAzMTYzCuivvueoi+e8luegge+8mjAyMDAwMjIxCuivvueoi+WQjeensO+8muWkp+Wtpuiuoeeul+acuuWfuuehgArmjojor77mlZnluIjvvJrnhorkuZnnqZcK5byA6K++5pe26Ze077yaMjA1MDYK5LiK6K++5ZGo5qyh77yaMTAK5byA6K++5Zyw54K577yaOC0zMDUK5LiK6K++54+t57qn77yaMjQxMTNBLDI0MTEzQic+5aSn5a2m6K6h566X5py65Z+656GAPGJyPueGiuS5meeplzxicj4xMDxicj44LTMwNTxicj4yNDExM0EsMjQxMTNCPC9hPjxicj4tLS0tLS0tLS0tLS08YnI+PGEgaHJlZj0nIycgdGl0bGU9J+W8gOivvue8luWPt++8mjIwMjQ0MDAzMjExCuivvueoi+e8luegge+8mjAxMDAwNjUzCuivvueoi+WQjeensO+8muWFrOW3rumFjeWQiOS4juaVsOWtl+WMlua1i+mHj+aKgOacrwrmjojor77mlZnluIjvvJrog6HojaPmnpcK5byA6K++5pe26Ze077yaMjA1MDYK5LiK6K++5ZGo5qyh77yaMTEK5byA6K++5Zyw54K577yaOS0xMTMK5LiK6K++54+t57qn77yaMjQxMTNBLDI0MTEzQic+5YWs5beu6YWN5ZCI5LiO5pWw5a2X5YyW5rWL6YeP5oqA5pyvPGJyPuiDoeiNo+aelzxicj4xMTxicj45LTExMzxicj4yNDExM0EsMjQxMTNCPC9hPjwvbm9icj48L3RkPjx0ZCB3aWR0aD05MCBoZWlnaHQ9MjggYWxpZ249J2NlbnRlcicgPjxub2JyPiAmbmJzcDsmbmJzcDs8YSBocmVmPScjJyB0aXRsZT0n5byA6K++57yW5Y+377yaMjAyNDQwMDMxMjMK6K++56iL57yW56CB77yaMDYwMDAwMDkK6K++56iL5ZCN56ew77ya5q+b5rO95Lic5oCd5oOz5ZKM5Lit5Zu954m56Imy56S+5Lya5Li75LmJ55CG6K665L2T57O75qaC6K66CuaOiOivvuaVmeW4iO+8muWImOWHoeWNjgrlvIDor77ml7bpl7TvvJozMDUwNgrkuIror77lkajmrKHvvJoxLTEyLDE1CuW8gOivvuWcsOeCue+8mjktMTMxCuS4iuivvuePree6p++8mjI0MTEzQSwyNDExM0InPuavm+azveS4nOaAneaDs+WSjOS4reWbveeJueiJsuekvuS8muS4u+S5ieeQhuiuuuS9k+ezu+amguiuujxicj7liJjlh6HljY48YnI+MS0xMiwxNTxicj45LTEzMTxicj4yNDExM0EsMjQxMTNCPC9hPjwvbm9icj48L3RkPjx0ZCB3aWR0aD05MCBoZWlnaHQ9MjggYWxpZ249J2NlbnRlcicgPjxub2JyPiAmbmJzcDsmbmJzcDs8YSBocmVmPScjJyB0aXRsZT0n5byA6K++57yW5Y+377yaMjAyNDQwMDMyMTEK6K++56iL57yW56CB77yaMDEwMDA2NTMK6K++56iL5ZCN56ew77ya5YWs5beu6YWN5ZCI5LiO5pWw5a2X5YyW5rWL6YeP5oqA5pyvCuaOiOivvuaVmeW4iO+8muiDoeiNo+aelwrlvIDor77ml7bpl7TvvJo0MDUwNgrkuIror77lkajmrKHvvJoxLTEwLDEyLDE1CuW8gOivvuWcsOeCue+8mjktMTEzCuS4iuivvuePree6p++8mjI0MTEzQSwyNDExM0InPuWFrOW3rumFjeWQiOS4juaVsOWtl+WMlua1i+mHj+aKgOacrzxicj7og6HojaPmnpc8YnI+MS0xMCwxMiwxNTxicj45LTExMzxicj4yNDExM0EsMjQxMTNCPC9hPjwvbm9icj48L3RkPjx0ZCB3aWR0aD05MCBoZWlnaHQ9MjggYWxpZ249J2NlbnRlcicgPjxub2JyPiAmbmJzcDsmbmJzcDs8YSBocmVmPScjJyB0aXRsZT0n5byA6K++57yW5Y+377yaMjAyNDQwMDMxNjMK6K++56iL57yW56CB77yaMDIwMDAyMjEK6K++56iL5ZCN56ew77ya5aSn5a2m6K6h566X5py65Z+656GACuaOiOivvuaVmeW4iO+8mueGiuS5meeplwrlvIDor77ml7bpl7TvvJo1MDUwNgrkuIror77lkajmrKHvvJoxLTYsOC0xMCwxMiwxNQrlvIDor77lnLDngrnvvJo5LTEzMQrkuIror77nj63nuqfvvJoyNDExM0EsMjQxMTNCJz7lpKflraborqHnrpfmnLrln7rnoYA8YnI+54aK5LmZ56mXPGJyPjEtNiw4LTEwLDEyLDE1PGJyPjktMTMxPGJyPjI0MTEzQSwyNDExM0I8L2E+PC9ub2JyPjwvdGQ+PHRkIHdpZHRoPTkwIGhlaWdodD0yOCBhbGlnbj0nY2VudGVyJyA+PG5vYnI+ICZuYnNwOyZuYnNwOzwvbm9icj48L3RkPjx0ZCB3aWR0aD05MCBoZWlnaHQ9MjggYWxpZ249J2NlbnRlcicgPjxub2JyPiAmbmJzcDsmbmJzcDs8L25vYnI+PC90ZD48L3RyPjx0cj48dGQgd2lkdGg9OTAgaGVpZ2h0PTI4IGFsaWduPWxlZnQ+56ys5LiD5YWr6IqCJm5ic3A7PC90ZD48dGQgd2lkdGg9OTAgaGVpZ2h0PTI4IGFsaWduPSdjZW50ZXInID48bm9icj4gJm5ic3A7Jm5ic3A7PGEgaHJlZj0nIycgdGl0bGU9J+W8gOivvue8luWPt++8mjIwMjQ0MDAzMTk1Cuivvueoi+e8luegge+8mjAxMDAwMDU2Cuivvueoi+WQjeensO+8muacuuaisOiuvuiuoeWfuuehgArmjojor77mlZnluIjvvJrmmY/nj43mooUK5byA6K++5pe26Ze077yaMTA3MDgK5LiK6K++5ZGo5qyh77yaMS0xMQrlvIDor77lnLDngrnvvJo5LTEyOArkuIror77nj63nuqfvvJoyNDExM0EsMjQxMTNCJz7mnLrmorDorr7orqHln7rnoYA8YnI+5pmP54+N5qKFPGJyPjEtMTE8YnI+OS0xMjg8YnI+MjQxMTNBLDI0MTEzQjwvYT48YnI+LS0tLS0tLS0tLS0tPGJyPjxhIGhyZWY9JyMnIHRpdGxlPSflvIDor77nvJblj7fvvJoyMDI0NDAwMzE5NQror77nqIvnvJbnoIHvvJowMTAwMDA1Ngror77nqIvlkI3np7DvvJrmnLrmorDorr7orqHln7rnoYAK5o6I6K++5pWZ5biI77ya5pmP54+N5qKFCuW8gOivvuaXtumXtO+8mjEwNzA4CuS4iuivvuWRqOasoe+8mjEyCuW8gOivvuWcsOeCue+8mjktMTI4CuS4iuivvuePree6p++8mjI0MTEzQSwyNDExM0InPuacuuaisOiuvuiuoeWfuuehgDxicj7mmY/nj43mooU8YnI+MTI8YnI+OS0xMjg8YnI+MjQxMTNBLDI0MTEzQjwvYT48L25vYnI+PC90ZD48dGQgd2lkdGg9OTAgaGVpZ2h0PTI4IGFsaWduPSdjZW50ZXInID48bm9icj4gJm5ic3A7Jm5ic3A7PGEgaHJlZj0nIycgdGl0bGU9J+W8gOivvue8luWPt++8mjIwMjQ0MDAzMTYzCuivvueoi+e8luegge+8mjAyMDAwMjIxCuivvueoi+WQjeensO+8muWkp+Wtpuiuoeeul+acuuWfuuehgArmjojor77mlZnluIjvvJrnhorkuZnnqZcK5byA6K++5pe26Ze077yaMjA3MDgK5LiK6K++5ZGo5qyh77yaMTAK5byA6K++5Zyw54K577yaOC0zMDUK5LiK6K++54+t57qn77yaMjQxMTNBLDI0MTEzQic+5aSn5a2m6K6h566X5py65Z+656GAPGJyPueGiuS5meeplzxicj4xMDxicj44LTMwNTxicj4yNDExM0EsMjQxMTNCPC9hPjxicj4tLS0tLS0tLS0tLS08YnI+PGEgaHJlZj0nIycgdGl0bGU9J+W8gOivvue8luWPt++8mjIwMjQ0MDAzMTYzCuivvueoi+e8luegge+8mjAyMDAwMjIxCuivvueoi+WQjeensO+8muWkp+Wtpuiuoeeul+acuuWfuuehgArmjojor77mlZnluIjvvJrnhorkuZnnqZcK5byA6K++5pe26Ze077yaMjA3MDgK5LiK6K++5ZGo5qyh77yaMTEK5byA6K++5Zyw54K577yaOC0zMDUK5LiK6K++54+t57qn77yaMjQxMTNBLDI0MTEzQic+5aSn5a2m6K6h566X5py65Z+656GAPGJyPueGiuS5meeplzxicj4xMTxicj44LTMwNTxicj4yNDExM0EsMjQxMTNCPC9hPjwvbm9icj48L3RkPjx0ZCB3aWR0aD05MCBoZWlnaHQ9MjggYWxpZ249J2NlbnRlcicgPjxub2JyPiAmbmJzcDsmbmJzcDs8YSBocmVmPScjJyB0aXRsZT0n5byA6K++57yW5Y+377yaMjAyNDQwMDM1OTcK6K++56iL57yW56CB77yaMDUwMDAzMDMK6K++56iL5ZCN56ew77ya5aSn5a2m5pWw5a2mMgrmjojor77mlZnluIjvvJrlvKDpuY8K5byA6K++5pe26Ze077yaMzA3MDgK5LiK6K++5ZGo5qyh77yaMS0xMQrlvIDor77lnLDngrnvvJo1LTIwMQrkuIror77nj63nuqfvvJoyNDExM0EsMjQxMTNCJz7lpKflrabmlbDlraYyPGJyPuW8oOm5jzxicj4xLTExPGJyPjUtMjAxPGJyPjI0MTEzQSwyNDExM0I8L2E+PC9ub2JyPjwvdGQ+PHRkIHdpZHRoPTkwIGhlaWdodD0yOCBhbGlnbj0nY2VudGVyJyA+PG5vYnI+ICZuYnNwOyZuYnNwOzxhIGhyZWY9JyMnIHRpdGxlPSflvIDor77nvJblj7fvvJoyMDI0NDAwMzE1NQror77nqIvnvJbnoIHvvJowNTAwMDAxMAror77nqIvlkI3np7DvvJrlpKflraboi7Hor60yCuaOiOivvuaVmeW4iO+8mueGiuWHr+iOiQrlvIDor77ml7bpl7TvvJo0MDcwOArkuIror77lkajmrKHvvJoxLTUsNy0xMQrlvIDor77lnLDngrnvvJo2LTIwMQrkuIror77nj63nuqfvvJoyNDExM0EsMjQxMTNCJz7lpKflraboi7Hor60yPGJyPueGiuWHr+iOiTxicj4xLTUsNy0xMTxicj42LTIwMTxicj4yNDExM0EsMjQxMTNCPC9hPjwvbm9icj48L3RkPjx0ZCB3aWR0aD05MCBoZWlnaHQ9MjggYWxpZ249J2NlbnRlcicgPjxub2JyPiAmbmJzcDsmbmJzcDs8YSBocmVmPScjJyB0aXRsZT0n5byA6K++57yW5Y+377yaMjAyNDQwMDMxOTUK6K++56iL57yW56CB77yaMDEwMDAwNTYK6K++56iL5ZCN56ew77ya5py65qKw6K6+6K6h5Z+656GACuaOiOivvuaVmeW4iO+8muaZj+ePjeaihQrlvIDor77ml7bpl7TvvJo1MDcwOArkuIror77lkajmrKHvvJo5CuW8gOivvuWcsOeCue+8mjktMTI4CuS4iuivvuePree6p++8mjI0MTEzQSwyNDExM0InPuacuuaisOiuvuiuoeWfuuehgDxicj7mmY/nj43mooU8YnI+OTxicj45LTEyODxicj4yNDExM0EsMjQxMTNCPC9hPjxicj4tLS0tLS0tLS0tLS08YnI+PGEgaHJlZj0nIycgdGl0bGU9J+W8gOivvue8luWPt++8mjIwMjQ0MDAzMTk1Cuivvueoi+e8luegge+8mjAxMDAwMDU2Cuivvueoi+WQjeensO+8muacuuaisOiuvuiuoeWfuuehgArmjojor77mlZnluIjvvJrmmY/nj43mooUK5byA6K++5pe26Ze077yaNTA3MDgK5LiK6K++5ZGo5qyh77yaMTAK5byA6K++5Zyw54K577yaOS0xMjgK5LiK6K++54+t57qn77yaMjQxMTNBLDI0MTEzQic+5py65qKw6K6+6K6h5Z+656GAPGJyPuaZj+ePjeaihTxicj4xMDxicj45LTEyODxicj4yNDExM0EsMjQxMTNCPC9hPjwvbm9icj48L3RkPjx0ZCB3aWR0aD05MCBoZWlnaHQ9MjggYWxpZ249J2NlbnRlcicgPjxub2JyPiAmbmJzcDsmbmJzcDs8L25vYnI+PC90ZD48dGQgd2lkdGg9OTAgaGVpZ2h0PTI4IGFsaWduPSdjZW50ZXInID48bm9icj4gJm5ic3A7Jm5ic3A7PC9ub2JyPjwvdGQ+PC90cj48dHI+PHRkICBoZWlnaHQ9MjggYWxpZ249bGVmdD7lpIcgJm5ic3A75rOoPC90ZD48dGQgaGVpZ2h0PTI4IGNvbHNwYW49Nz4mbmJzcDs8L3RkPjwvdHI+PC90YWJsZT5kGAEFHl9fQ29udHJvbHNSZXF1aXJlUG9zdEJhY2tLZXlfXxYBBQJteBwTrDK2P1Up82bJPfs9cuZT7M+lN8Lfp1pCL3xqM2VZ" />

		<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="ECBC236F" />
		<table border="0" width="100%" cellspacing="0" cellpadding="0">
			<tr>
				<td bgcolor="#e8f8ff" style="width: 100%">

					&nbsp;
				</td>
			</tr>
			<tr>
				<td height="20" bgcolor="#588FC7">
					<font color="#FFFFFF">&nbsp;&nbsp;&nbsp; 学生个人课表&nbsp; &nbsp;&nbsp; &nbsp; [学号：24113A051]&nbsp;
						&nbsp; [姓名：郑毅智]</font>
				</td>
			</tr>
		</table>
		<table>
			<tr>
				<td>
					开课学期：
				</td>
				<td>
					<select name="ddlxnxqh" id="ddlxnxqh">
	<option selected="selected" value="2024-2025-2">2024-2025-2</option>
	<option value="2024-2025-1">2024-2025-1</option>
	<option value="2023-2024-2">2023-2024-2</option>
	<option value="2023-2024-1">2023-2024-1</option>
	<option value="2022-2023-2">2022-2023-2</option>
	<option value="2022-2023-1">2022-2023-1</option>
	<option value="2021-2022-2">2021-2022-2</option>
	<option value="2021-2022-1">2021-2022-1</option>
	<option value="2020-2021-2">2020-2021-2</option>
	<option value="2020-2021-1">2020-2021-1</option>
	<option value="2019-2020-2">2019-2020-2</option>
	<option value="2019-2020-1">2019-2020-1</option>
	<option value="2018-2019-2">2018-2019-2</option>
	<option value="2018-2019-1">2018-2019-1</option>
	<option value="2017-2018-2">2017-2018-2</option>
	<option value="2017-2018-1">2017-2018-1</option>
	<option value="2016-2017-2">2016-2017-2</option>
	<option value="2016-2017-1">2016-2017-1</option>
	<option value="2015-2016-2">2015-2016-2</option>
	<option value="2015-2016-1">2015-2016-1</option>
	<option value="2014-2015-2">2014-2015-2</option>
	<option value="2014-2015-1">2014-2015-1</option>
	<option value="2013-2014-2">2013-2014-2</option>
	<option value="2013-2014-1">2013-2014-1</option>
	<option value="2012-2013-2">2012-2013-2</option>
	<option value="2012-2013-1">2012-2013-1</option>
	<option value="2011-2012-2">2011-2012-2</option>
	<option value="2011-2012-1">2011-2012-1</option>
	<option value="2010-2011-2">2010-2011-2</option>
	<option value="2010-2011-1">2010-2011-1</option>
	<option value="2009-2010-2">2009-2010-2</option>
	<option value="2009-2010-1">2009-2010-1</option>
	<option value="2008-2009-2">2008-2009-2</option>
	<option value="2008-2009-1">2008-2009-1</option>
	<option value="2007-2008-2">2007-2008-2</option>
	<option value="2007-2008-1">2007-2008-1</option>
	<option value="2006-2007-2">2006-2007-2</option>
	<option value="2006-2007-1">2006-2007-1</option>
	<option value="2005-2006-2">2005-2006-2</option>
	<option value="2005-2006-1">2005-2006-1</option>
	<option value="2004-2005-2">2004-2005-2</option>
	<option value="2004-2005-1">2004-2005-1</option>
	<option value="2003-2004-2">2003-2004-2</option>
	<option value="2003-2004-1">2003-2004-1</option>
	<option value="2002-2003-2">2002-2003-2</option>
	<option value="2002-2003-1">2002-2003-1</option>
	<option value="2001-2002-2">2001-2002-2</option>
	<option value="2001-2002-1">2001-2002-1</option>
	<option value="2000-2001-2">2000-2001-2</option>
	<option value="2000-2001-1">2000-2001-1</option>
	<option value="1999-2000-2">1999-2000-2</option>
	<option value="1999-2000-1">1999-2000-1</option>

</select>
				</td>

				<td>
					<span onchange="creating.style.visibility=&#39;visible&#39;;"><input id="mx" type="checkbox" name="mx" checked="checked" /><label for="mx">放大</label></span>
				</td>
				<td>
					周次<select name="zc" id="zc">
	<option selected="selected" value="">全部</option>
	<option value="1">第1周</option>
	<option value="2">第2周</option>
	<option value="3">第3周</option>
	<option value="4">第4周</option>
	<option value="5">第5周</option>
	<option value="6">第6周</option>
	<option value="7">第7周</option>
	<option value="8">第8周</option>
	<option value="9">第9周</option>
	<option value="10">第10周</option>
	<option value="11">第11周</option>
	<option value="12">第12周</option>
	<option value="13">第13周</option>
	<option value="14">第14周</option>
	<option value="15">第15周</option>
	<option value="16">第16周</option>
	<option value="17">第17周</option>
	<option value="18">第18周</option>
	<option value="19">第19周</option>
	<option value="20">第20周</option>

</select>
				</td>
				<td>
					<input name="b1" type="button" id="b1" class="buttonstyle" onclick="js_callpage5(1)" value="打印课表" />
                        </td>
			</tr>
		</table>
		<table width="100%">
			<tr>
				<td align="center">
					<span id="Label1"><font color="Red"></font></span></td>
			</tr>
		</table>
		<div id="kb" align="center" style="overflow: auto; height: 380">
			<table border=1 width=98% height=80% bordercolorlight=#588FC7 cellspacing=0 cellpadding=0
				bordercolor=#588FC7 bordercolordark=#ffffff height=88>
				<tr>
					<td width=90 height=28 align=center><a href=# onclick='window.print()'>打印课表</a></td>
					<td width=130 height=28 align=center>星期一 </td>
					<td width=130 height=28 align=center>星期二 </td>
					<td width=130 height=28 align=center>星期三 </td>
					<td width=130 height=28 align=center>星期四 </td>
					<td width=130 height=28 align=center>星期五 </td>
					<td width=130 height=28 align=center>星期六 </td>
					<td width=130 height=28 align=center>星期天 </td>
				</tr>
				<tr>
					<td width=90 height=28 align=left>第一二节&nbsp;</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;<a href='#' title='开课编号：20244003155
课程编码：05000010
课程名称：大学英语2
授课教师：熊凯莉
开课时间：10102
上课周次：1-12,15
开课地点：5-203
上课班级：24113A,24113B'>大学英语2<br>熊凯莉<br>1-12,15<br>5-203<br>24113A,24113B</a></nobr>
					</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;<a href='#' title='开课编号：20244003211
课程编码：01000653
课程名称：公差配合与数字化测量技术
授课教师：胡荣林
开课时间：20102
上课周次：1-8
开课地点：9-123
上课班级：24113A,24113B'>公差配合与数字化测量技术<br>胡荣林<br>1-8<br>9-123<br>24113A,24113B</a></nobr>
					</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;<a href='#' title='开课编号：20244003147
课程编码：05000304
课程名称：大学体育2
授课教师：谢洁琼
开课时间：30102
上课周次：1-12,15
开课地点：9-133
上课班级：24113A,24113B'>大学体育2<br>谢洁琼<br>1-12,15<br>9-133<br>24113A,24113B</a></nobr>
					</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;<a href='#' title='开课编号：20244003163
课程编码：02000221
课程名称：大学计算机基础
授课教师：熊乙穗
开课时间：40102
上课周次：1-10
开课地点：9-119
上课班级：24113A,24113B'>大学计算机基础<br>熊乙穗<br>1-10<br>9-119<br>24113A,24113B</a></nobr>
					</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;</nobr>
					</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;</nobr>
					</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;</nobr>
					</td>
				</tr>
				<tr>
					<td width=90 height=28 align=left>第三四节&nbsp;</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;<a href='#' title='开课编号：20244003131
课程编码：06000215
课程名称：大学生心理健康教育2
授课教师：吴琦
开课时间：10304
上课周次：1-8
开课地点：9-144
上课班级：24113A,24113B'>大学生心理健康教育2<br>吴琦<br>1-8<br>9-144<br>24113A,24113B</a></nobr>
					</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;<a href='#' title='开课编号：20244003187
课程编码：01000029
课程名称：工程力学
授课教师：徐勇
开课时间：20304
上课周次：1-8
开课地点：9-105
上课班级：24113A,24113B'>工程力学<br>徐勇<br>1-8<br>9-105<br>24113A,24113B</a></nobr>
					</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;<a href='#' title='开课编号：20244003179
课程编码：01000070
课程名称：计算机绘图
授课教师：姜店祥
开课时间：30304
上课周次：1-12,15
开课地点：9-113
上课班级：24113A,24113B'>计算机绘图<br>姜店祥<br>1-12,15<br>9-113<br>24113A,24113B</a></nobr>
					</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;<a href='#' title='开课编号：20244003115
课程编码：06000013
课程名称：形势与政策2
授课教师：修诗艺
开课时间：40304
上课周次：5-8
开课地点：9-103
上课班级：24113A,24113B'>形势与政策2<br>修诗艺<br>5-8<br>9-103<br>24113A,24113B</a></nobr>
					</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;<a href='#' title='开课编号：20244003195
课程编码：01000056
课程名称：机械设计基础
授课教师：晏珍梅
开课时间：50304
上课周次：1-6,8-10,12
开课地点：9-123
上课班级：24113A,24113B'>机械设计基础<br>晏珍梅<br>1-6,8-10,12<br>9-123<br>24113A,24113B</a></nobr>
					</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;</nobr>
					</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;</nobr>
					</td>
				</tr>
				<tr>
					<td width=90 height=28 align=left>第五六节&nbsp;</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;<a href='#' title='开课编号：20244003597
课程编码：05000303
课程名称：大学数学2
授课教师：张鹏
开课时间：10506
上课周次：1-11,15
开课地点：9-124
上课班级：24113A,24113B'>大学数学2<br>张鹏<br>1-11,15<br>9-124<br>24113A,24113B</a><br>------------<br><a href='#' title='开课编号：20244003597
课程编码：05000303
课程名称：大学数学2
授课教师：张鹏
开课时间：10506
上课周次：13
开课地点：6-202
上课班级：24113A,24113B'>大学数学2<br>张鹏<br>13<br>6-202<br>24113A,24113B</a></nobr>
					</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;<a href='#' title='开课编号：20244003163
课程编码：02000221
课程名称：大学计算机基础
授课教师：熊乙穗
开课时间：20506
上课周次：10
开课地点：8-305
上课班级：24113A,24113B'>大学计算机基础<br>熊乙穗<br>10<br>8-305<br>24113A,24113B</a><br>------------<br><a href='#' title='开课编号：20244003211
课程编码：01000653
课程名称：公差配合与数字化测量技术
授课教师：胡荣林
开课时间：20506
上课周次：11
开课地点：9-113
上课班级：24113A,24113B'>公差配合与数字化测量技术<br>胡荣林<br>11<br>9-113<br>24113A,24113B</a></nobr>
					</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;<a href='#' title='开课编号：20244003123
课程编码：06000009
课程名称：毛泽东思想和中国特色社会主义理论体系概论
授课教师：刘凡华
开课时间：30506
上课周次：1-12,15
开课地点：9-131
上课班级：24113A,24113B'>毛泽东思想和中国特色社会主义理论体系概论<br>刘凡华<br>1-12,15<br>9-131<br>24113A,24113B</a></nobr>
					</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;<a href='#' title='开课编号：20244003211
课程编码：01000653
课程名称：公差配合与数字化测量技术
授课教师：胡荣林
开课时间：40506
上课周次：1-10,12,15
开课地点：9-113
上课班级：24113A,24113B'>公差配合与数字化测量技术<br>胡荣林<br>1-10,12,15<br>9-113<br>24113A,24113B</a></nobr>
					</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;<a href='#' title='开课编号：20244003163
课程编码：02000221
课程名称：大学计算机基础
授课教师：熊乙穗
开课时间：50506
上课周次：1-6,8-10,12,15
开课地点：9-131
上课班级：24113A,24113B'>大学计算机基础<br>熊乙穗<br>1-6,8-10,12,15<br>9-131<br>24113A,24113B</a></nobr>
					</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;</nobr>
					</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;</nobr>
					</td>
				</tr>
				<tr>
					<td width=90 height=28 align=left>第七八节&nbsp;</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;<a href='#' title='开课编号：20244003195
课程编码：01000056
课程名称：机械设计基础
授课教师：晏珍梅
开课时间：10708
上课周次：1-11
开课地点：9-128
上课班级：24113A,24113B'>机械设计基础<br>晏珍梅<br>1-11<br>9-128<br>24113A,24113B</a><br>------------<br><a href='#' title='开课编号：20244003195
课程编码：01000056
课程名称：机械设计基础
授课教师：晏珍梅
开课时间：10708
上课周次：12
开课地点：9-128
上课班级：24113A,24113B'>机械设计基础<br>晏珍梅<br>12<br>9-128<br>24113A,24113B</a></nobr>
					</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;<a href='#' title='开课编号：20244003163
课程编码：02000221
课程名称：大学计算机基础
授课教师：熊乙穗
开课时间：20708
上课周次：10
开课地点：8-305
上课班级：24113A,24113B'>大学计算机基础<br>熊乙穗<br>10<br>8-305<br>24113A,24113B</a><br>------------<br><a href='#' title='开课编号：20244003163
课程编码：02000221
课程名称：大学计算机基础
授课教师：熊乙穗
开课时间：20708
上课周次：11
开课地点：8-305
上课班级：24113A,24113B'>大学计算机基础<br>熊乙穗<br>11<br>8-305<br>24113A,24113B</a></nobr>
					</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;<a href='#' title='开课编号：20244003597
课程编码：05000303
课程名称：大学数学2
授课教师：张鹏
开课时间：30708
上课周次：1-11
开课地点：5-201
上课班级：24113A,24113B'>大学数学2<br>张鹏<br>1-11<br>5-201<br>24113A,24113B</a></nobr>
					</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;<a href='#' title='开课编号：20244003155
课程编码：05000010
课程名称：大学英语2
授课教师：熊凯莉
开课时间：40708
上课周次：1-5,7-11
开课地点：6-201
上课班级：24113A,24113B'>大学英语2<br>熊凯莉<br>1-5,7-11<br>6-201<br>24113A,24113B</a></nobr>
					</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;<a href='#' title='开课编号：20244003195
课程编码：01000056
课程名称：机械设计基础
授课教师：晏珍梅
开课时间：50708
上课周次：9
开课地点：9-128
上课班级：24113A,24113B'>机械设计基础<br>晏珍梅<br>9<br>9-128<br>24113A,24113B</a><br>------------<br><a href='#' title='开课编号：20244003195
课程编码：01000056
课程名称：机械设计基础
授课教师：晏珍梅
开课时间：50708
上课周次：10
开课地点：9-128
上课班级：24113A,24113B'>机械设计基础<br>晏珍梅<br>10<br>9-128<br>24113A,24113B</a></nobr>
					</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;</nobr>
					</td>
					<td width=90 height=28 align='center'>
						<nobr> &nbsp;&nbsp;</nobr>
					</td>
				</tr>
				<tr>
					<td height=28 align=left>备 &nbsp;注</td>
					<td height=28 colspan=7>&nbsp;</td>
				</tr>
			</table>
		</div>
		<div id="creating" style="position: absolute; top: 245; z-index: 9; visibility: hidden; height: 54">
			<table width="100%" border="0" cellspacing="0" cellpadding="0" id="Table1">
				<tr>
					<td width="2%">
					</td>
					<td align="center">
						<table border="0" cellspacing="0" cellpadding="0" width="330">
							<tr>
								<td bgcolor="#588FC7" align="center">
									<table width="100%" height="50" border="0" cellspacing="2" cellpadding="0"
										id="Table2">
										<tr>
											<td bgcolor="#eeeeee" align="center" width="100%" height="100%" class="xz">
												系统正在读取课表, 请稍候...</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
					<td width="2%">
					</td>
				</tr>
			</table>
		</div>
	</form>

</body>

</html>
""";
