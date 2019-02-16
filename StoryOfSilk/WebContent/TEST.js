$(document)
		.ready(
				function() {
					$('.readmorehometext').click(function() {
						$('.readmorehometext-content').slideDown();
						$('.readmorehometext').hide();
						return false;
					});
					$("#stylequiz .questioncontainer a.sqoption").click(
							function() {
								var optionselected = $(this).attr("title");
								var questionnum = $(this).attr("rel");
								var questionnumclass = "." + questionnum
										+ " a.sqoption";
								$(questionnumclass).removeClass("selected");
								$(this).addClass("selected");
								$.ajax({
									type : "POST",
									async : false,
									cache : false,
									url : 'savetosession.php',
									data : "questionnum=" + questionnum
											+ "&answer=" + optionselected,
									success : function(data) {
									}
								});
								return false;
							});
					$("#stylequiz .questioncontainermultiple a.sqoption")
							.click(
									function() {
										$(this).addClass("selected");
										$(
												".questioncontainermultiple .postmultiple")
												.show();
										return false;
									});
					$("#stylequiz .questioncontainermultiple a.postmultiple")
							.click(
									function() {
										var questionnum = $(this).attr("rel");
										var questionnumclass = "."
												+ questionnum + " a.selected";
										var optionselected = '';
										var $j_object = $(questionnumclass);
										$j_object.each(function(i) {
											optionselected += $(this).attr(
													"title")
													+ ',';
										});
										$.ajax({
											type : "POST",
											async : false,
											cache : false,
											url : 'savetosession.php',
											data : "questionnum=" + questionnum
													+ "&answer="
													+ optionselected,
											success : function(data) {
											}
										});
										return false;
									});
					$("#stylequiz .sqcontainer")
							.jCarouselLite(
									{
										start : 0,
										scroll : 1,
										btnNext : "#stylequiz .next",
										btnPrev : "#stylequiz .prev",
										auto : 0,
										speed : 1200,
										visible : 1,
										beforeStart : function(a) {
											var thislistitem = $(a.get(0))
													.attr("class")
													.replace(
															"questioncontainer question",
															"");
											thislistitem = parseInt(thislistitem) + 1;
											$(
													".questioncontainermultiple .postmultiple")
													.hide();
											if (thislistitem == 17) {
												window.location.href = "reveal-your-style-now.php";
											}
										}
									});
				});/**
					 * 
					 */
