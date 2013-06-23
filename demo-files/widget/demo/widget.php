<?php

/**
* This is very simple widget for displaying basic information on a widget.
*/
class InfoWidget extends \Hoborg\Dashboard\Widget {

	public function bootstrap() {
		$widget = $this->data;

		if (empty($widget['data']['conf']['file'])) {
			$widget['body'] = 'no conf';
			$widget['error'] = "Data file not configured: widget.conf.data";
			return $widget;
		}

		$dataFile = $this->kernel->findFileOnPath(
			$widget['data']['conf']['file'],
			$this->kernel->getDataPath()
		);

		if (!is_readable($dataFile)) {
			$widget['body'] = "$dataFile not readable";
			$widget['error'] = "Data file ({$dataFile}) not readable";
			return $widget;
		}

		$data = json_decode(file_get_contents($dataFile), true);

		$view = array(
			'header.text' => $data['header']['text'],
			'header.class' =>$data['header']['status'],
			'data' => $data['data'],
		);
		ob_start();
		include __DIR__ . '/view.phtml';
		$widget['body'] = ob_get_clean();

		$this->data = $widget;
	}
}
