var fs   = require("fs");
var sys  = require("sys");
var path = "fileio.txt";

fs.writeFile(path, "hello", function (error) {
    fs.open(path, "a", 0666, function (error, file) {
        fs.write(file, "\nworld", null, "utf-8", function () {
            fs.close(file, function (error) {
                fs.readFile(path, "utf-8", function (error, data) {
                    var lines = data.split("\n");
                    sys.puts(lines[1]);
                });
            });
        });
    });
});

// A little bit cleaner:

/*
var writeString = function (string, nextAction) {
    fs.writeFile(path, string, nextAction);
};

var appendString = function (string, nextAction) {
    return function (error, file) {
        fs.open(path, "a", 0666, function (error, file) {
            fs.write(file, string, null, "utf-8", function () {
                fs.close(file, nextAction);
            });
        });
    };
};

var readLine = function (index, nextAction) {
    return function (error) {
        fs.readFile(path, "utf-8", function (error, data) {
            var lines = data.split("\n");
            nextAction(lines[index]);
        });
    };
};

var writeToConsole = function (line) {
    sys.puts(line);
};

writeString("hello", appendString("\nworld", readLine(1, writeToConsole)));
*/
