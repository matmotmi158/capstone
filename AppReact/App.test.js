import { render, screen } from '@testing-library/react';
import React from 'react';
import App from './App'

describe('App tests', () => {
	it('should contains the heading 1', () => {
		render(<App />);
		const heading = getByTextContent('Hello World');
		expect(heading).toBeInTheDocument();
	});
});

const getByTextContent = (text) => {
	// Passing function to `getByText`
	return screen.getByText((content, element) => {
		const hasText = element => element.textContent === text
		const elementHasText = hasText(element)
		const childrenDontHaveText = Array.from(element?.children || []).every(child => !hasText(child))
		return elementHasText && childrenDontHaveText
	})
}