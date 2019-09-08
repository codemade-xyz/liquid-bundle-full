<?php

/**
 * This file is part of the Liquid package.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 * @package Liquid
 */

namespace CodeMade\LiquidBundle\Liquid\Tag;

use CodeMade\LiquidBundle\Liquid\AbstractBlock;
use CodeMade\LiquidBundle\Liquid\Context;

/**
 * Creates a comment; everything inside will be ignored
 *
 * Example:
 *
 *     {% comment %} This will be ignored {% endcomment %}
 */
class TagComment extends AbstractBlock
{
	/**
	 * Renders the block
	 *
	 * @param Context $context
	 *
	 * @return string empty string
	 */
	public function render(Context $context) {
		return '';
	}
}
