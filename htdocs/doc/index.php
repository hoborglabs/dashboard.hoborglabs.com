<?php

include_once __DIR__ . '/../../vendor/markdown/markdown.php';

$body_parts = array(
	array('side' => 'about.intro.md', 'content' => 'about.md'),
	array('side' => 'widget-content.intro.md', 'content' => 'widget-content.md'),
);

$active_link = '/doc';
$body = ''; //file_get_contents(__DIR__ . '/../../includes/doc/index.html');

$data_dir = __DIR__ . '/../../includes/doc/';
$class = '';
foreach ($body_parts as $i => $body_part) {
	if ($i % 2) {
		$class = 'container highlight';
	} else {
		$class = 'container';
	}
	$body .= '<div class="'.$class.'"><div class="row">';

	if (!empty($body_part['side'])) {
		$body .= '<div class="side">';
		$body .= Markdown(file_get_contents($data_dir . $body_part['side']));
		$body .= '</div>';
	} else {
		$body .= '<div class="side"></div>';
	}

	if (!empty($body_part['content'])) {
		$body .= '<div class="content">';
		$body .= Markdown(file_get_contents($data_dir . $body_part['content']));
		$body .= '</div>';
	} else {
		$body .= '<div class="content"></div>';
	}

	$body .= '</div></div>';
}

include_once __DIR__ . '/../../includes/base.phtml';
