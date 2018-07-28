function show() {

    var a = $(".text");
    var b = $(".hr");
    var c = $(".descText");

    a.delay(1000).animate({top: "0", opacity: "1"}, 1000, function() {
        b.delay(500).animate({marginLeft: "0"}, 800, function() {
            c.animate({marginTop: "15"}, 800)
        });
    });


});
