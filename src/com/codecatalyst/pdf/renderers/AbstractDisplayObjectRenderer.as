/*
* Copyright 2010 CodeCatalyst, LLC - http://www.codecatalyst.com/
* 
* Licensed under the Apache License, Version 2.0 (the "License"); you may not
* use this file except in compliance with the License. You may obtain a copy of
* the License. You may obtain a copy of the License at
* 
* http://www.apache.org/licenses/LICENSE-2.0
* 
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
* WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
* License for the specific language governing permissions and limitations under
* the License.
*/

package com.codecatalyst.pdf.renderers
{
	import com.codecatalyst.pdf.core.IGraphicsContext;
	import com.codecatalyst.pdf.IPdfGenerator;
	
	import flash.display.DisplayObject;
	import flash.geom.Rectangle;

	public class AbstractDisplayObjectRenderer implements IDisplayObjectRenderer
	{
		// ========================================
		// Protected Properties
		// ========================================
		
		/**
		 * Backing variable for the <code>type</code> property.
		 */
		protected var _type:Class = null;
		
		// ========================================
		// Public Properties
		// ========================================
		
		/**
		 * @inheritDoc
		 */
		public function get type():Class
		{
			return _type;
		}
		
		// ========================================
		// Constructor
		// ========================================
		
		/**
		 * @inheritDoc
		 */
		public function AbstractDisplayObjectRenderer( type:Class )
		{
			super();
			
			_type = type;
		}
		
		// ========================================
		// Public Methods
		// ========================================
		
		/**
		 * @inheritDoc
		 */
		public function render( generator:IPdfGenerator, context:IGraphicsContext, displayObject:DisplayObject, frame:Rectangle ):void
		{
			// Subclasses should implement this method.
		}
	}
}