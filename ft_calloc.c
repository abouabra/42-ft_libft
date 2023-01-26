/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_calloc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abouabra <abouabra@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/02 13:27:26 by abouabra          #+#    #+#             */
/*   Updated: 2022/10/02 15:06:23 by abouabra         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	garbage_collector(void *adress, int arg)
{
	static t_list *head;
	t_list *node;

	
	if(arg)
		ft_lstclear(&head, free);
	else
	{
		node = ft_lstnew(adress);
		ft_lstadd_back(&head, node);
	};
}

void	*ft_calloc(size_t nitems, size_t size)
{
	void	*str;

	str = malloc(nitems * size);
	if (!str)
		return (0);
	ft_memset(str, 0, nitems * size);
	garbage_collector(str,0);
	return (str);
}


int main()
{
	void *test;

	// test = ft_calloc(1,10);
	// test = ft_calloc(1,10);
	// test = ft_calloc(1,10);
	// test = ft_calloc(1,10);
	return 0;
}