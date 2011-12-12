<?php 

// developers list
$developers = array(
    'john g', 'dave k', 'steve a', 'matt l',
    'mark w', 'tom k', 'rob s', 'kevin o',
    'bill f', 'calvin b', 'chris w', 'connor d',
    'garry u', 'gavin g', 'frank b', 'glen a',
);

$dataFile = $widget['conf']['data'];

$mergeQueue = json_decode(@file_get_contents(__DIR__ . '/' . $dataFile));
$mergeQueue = empty($mergeQueue) ? array() : $mergeQueue;
if (count($mergeQueue) > 16) {
    $mergeQueue = array_slice($mergeQueue, 16);
}

// get random number of developers
$mergeCount = rand(0, 3);

for ($i = 0; $i < $mergeCount; $i++) {
    $rm = rand(0, 10);
    if ($rm > 4) {
        array_shift($mergeQueue);
    } else {
	$id = rand(0, count($developers)-1);
	$branch = rand(2000, 2999);
	$mergeQueue[] = $branch . ' - ' . ucwords($developers[$id]);

	unset($developers[$id]);
	$developers = array_values($developers);
	}
}

file_put_contents(__DIR__ . '/' . $dataFile, json_encode($mergeQueue));

if (empty($mergeQueue)) {
	$widget['body'] = '';
} else {
	// get widget body
	ob_start();
	include __DIR__ . '/merge-queue.phtml';
	$widget['body'] = ob_get_clean();
}

return $widget;