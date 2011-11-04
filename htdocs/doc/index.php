<?php

include_once __DIR__ . '/../../vendor/markdown/markdown.php';

$body_parts = array(
	array('side' => 'about.intro.md', 'content' => 'about.md'),
	array('side' => 'widget-content.intro.md', 'content' => 'widget-content.md'),
);

$active_link = '/doc';
$body = ''; //file_get_contents(__DIR__ . '/../../includes/doc/index.html');

$data_dir = __DIR__ . '/../../includes/doc/';
foreach ($body_parts as $body_part) {
	$body .= '<div class="row">';

	if (!empty($body_part['side'])) {
		$body .= '<div class="span4">';
		$body .= Markdown(file_get_contents($data_dir . $body_part['side']));
		$body .= '</div>';
	} else {
		$body .= '<div class="span4"></div>';
	}

	if (!empty($body_part['content'])) {
		$body .= '<div class="span12">';
		$body .= Markdown(file_get_contents($data_dir . $body_part['content']));
		$body .= '</div>';
	} else {
		$body .= '<div class="span12"></div>';
	}

	$body .= '</div>';
}

include_once __DIR__ . '/../../includes/base.phtml';
