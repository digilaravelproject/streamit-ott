<?php
$target = realpath(__DIR__ . '/../storage/app/public');
$link = __DIR__ . '/storage';

if (is_link($link)) {
    unlink($link);
}

if (file_exists($link)) {
    rmdir($link);
}

if (symlink($target, $link)) {
    echo "Symlink created successfully: $link -> $target";
} else {
    echo "Symlink creation failed.";
}
