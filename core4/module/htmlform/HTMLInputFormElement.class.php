<?php
/**
* HTMLInputFormElement.class.php
*
* Copyright c 2015, SUPERHOLDER. All rights reserved.
*
* This library is free software; you can redistribute it and/or
* modify it under the terms of the GNU Lesser General Public
* License as published by the Free Software Foundation; either
* version 2.1 of the License, or at your option any later version.
*
* This library is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* Lesser General Public License for more details.
*
* You should have received a copy of the GNU Lesser General Public
* License along with this library; if not, write to the Free Software
* Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
* MA 02110-1301  USA
*/


namespace Module\HTMLForm;

if (!defined('InSite'))
{
    die ('Hacking attempt');
}

/**
* Defines the extra attributes for input elements
* @package \Module\HTMLForm
*/
abstract class HTMLInputFormElement extends \Module\HTMLForm\HTMLFormElement
{
    /**
    * @publicget
    * @publicset
    * @var string Specifies the tab order of an element
    */
    protected $tabindex = '';

    /**
    * Adds standard data to the element.
    * @param \SimpleXMLElement The xml element to expand, by reference
    */
    protected function addFields(\SimpleXMLElement $xml)
    {
        $xml->tabindex = $this->tabindex;

        parent::addFields($xml);
    }
}