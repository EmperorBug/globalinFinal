/**
 * 
 */

postAjax = (url, data) => {
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

updateAjax = (url, data) => {
	$.ajax({
		url:url,
		data:JSON.stringify(data),
		method:'put',
		contentType:'application/json; charset=utf-8',
		dataType:'json',
		success : (result) => {
			if (result == 200) {
				return result;
			}
		}
	}) 
}

delAjax = (url, data) => {
	$.ajax({
		url:url,
		data:JSON.stringify(data),
		method:'delete',
		contentType:'application/json; charset=utf-8',
		dataType:'json',
		success : (result) => {
			alert('삭제했습니다.');
			location.reload();
		}
	}) 
}