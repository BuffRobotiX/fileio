<?php

$filePath = "fileio.txt";

file_put_contents($filePath, "hello");
file_put_contents($filePath, "\nworld", FILE_APPEND);

$lines = file($filePath);

echo $lines[1];

// closing PHP tags are bad practice in PHP-only files, don't use them
