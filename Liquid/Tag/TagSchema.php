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
use CodeMade\LiquidBundle\Liquid\AbstractTag;
use CodeMade\LiquidBundle\Liquid\Document;
use CodeMade\LiquidBundle\Liquid\Context;
use CodeMade\LiquidBundle\Liquid\Liquid;
use CodeMade\LiquidBundle\Liquid\LiquidException;
use CodeMade\LiquidBundle\Liquid\FileSystem;
use CodeMade\LiquidBundle\Liquid\Regexp;
use CodeMade\LiquidBundle\Liquid\Template;

/**
 * Includes another, partial, template
 *
 * Example:
 *
 *     {% section 'foo' %}
 *
 *     Will include the template called 'foo'
 *
 *     {% section 'foo' with 'bar' %}
 *
 *     Will include the template called 'foo', with a variable called foo that will have the value of 'bar'
 *
 *     {% section 'foo' for 'bar' %}
 *
 *     Will loop over all the values of bar, including the template foo, passing a variable called foo
 *     with each value of bar
 */
class TagSchema extends AbstractBlock
{
    public function render(Context $context)
    {
        liquid::setSchema(parent::render($context));
        return '';
    }
}
