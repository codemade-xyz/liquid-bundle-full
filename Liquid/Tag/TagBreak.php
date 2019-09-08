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

use CodeMade\LiquidBundle\Liquid\AbstractTag;
use CodeMade\LiquidBundle\Liquid\Context;

/**
 * Break iteration of the current loop
 *
 * Example:
 *
 *     {% for i in (1..5) %}
 *       {% if i == 4 %}
 *         {% break %}
 *       {% endif %}
 *       {{ i }}
 *     {% endfor %}
 */
class TagBreak extends AbstractTag
{
    /**
     * Renders the tag
     *
     * @param Context $context
     *
     * @return string|void
     */
    public function render(Context $context) {
        $context->registers['break'] = true;
    }
}