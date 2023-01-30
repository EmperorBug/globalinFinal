/**
 * 
 */

aJax = (url, data) => {
	$.ajax({
		url:url,
		data:JSON.stringify(data),
		method:'post',
		contentType:'application/json; charset=utf-8',
		dataType:'json',
		success : (result) => {
			if (result == 200) {
				location.href='/';
			}
		}
	}) 
}