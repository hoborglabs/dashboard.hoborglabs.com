<?php

class CommitersWidget extends \Hoborg\Dashboard\Widget {

	public function bootstrap() {
		$widget = $this->data;

		// developers list
		$developers = array(
		    'john g', 'dave k', 'steve a', 'matt l',
		    'mark w', 'tom k', 'rob s', 'kevin o',
		    'bill f', 'calvin b', 'chris w', 'connor d',
		    'garry u', 'gavin g', 'frank b', 'glen a',
		);

		// get random number of developers
		$developersCount = rand(4, 8);
		$commiters = array();

		for ($i = 0; $i < $developersCount; $i++) {
			$id = $this->getDeveloperId($developers, rand(0, count($developers)-1));
			$commiters[] = array(
				'name' => ucwords($developers[$id]),
				'img' => '/images/faces/' . sprintf('%02d', $id+1) . '.png',
				'size' => rand(60, 120),
			);

			unset($developers[$id]);
		}

		// get widget body
		ob_start();
		include __DIR__ . '/commiters.phtml';
		$widget['body'] = ob_get_clean();

		$this->data = $widget;
	}

	public function getDeveloperId($developers, $num) {
		$i = 0;
		foreach ($developers as $id => $dev) {
			if ($i++ == $num) {
				return $id;
			}
		}
	}
}
