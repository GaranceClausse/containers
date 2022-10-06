/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   Stack.hpp                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gclausse <gclausse@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/06 08:25:33 by gclausse          #+#    #+#             */
/*   Updated: 2022/10/06 10:17:12 by gclausse         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#pragma once

#include <iostream>
#include <string>
#include <vector>


namespace ft{
	
template <class T, class Container = std::vector<T> >
class Stack
{
	private:
		Container	c;
	public:
		typedef typename Container::value_type	value_type;
		typedef typename Container::size_type	size_type;
		typedef			Container	container;

		bool	empty() const	{return c.empty();};
		size_type	size() const	{return c.size();};
		value_type&	top()	{return c.back();};
		const value_type& top() const	{return const c.back();};
		void	push(const value_type& val) {return c.push_back(val);};
		//implémenter emplace mais pas trop compris comment...
		//template <class... Args> void emplace (Args&&... args);
		void	pop() {return c.pop_back();};
		void	swap(container& x) noexcept() {return c.swap(x);};
		
		
		Stack(/* args */);
		~Stack();
};
}
