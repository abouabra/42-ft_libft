/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abouabra < abouabra@student.1337.ma >      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/03 10:38:10 by abouabra          #+#    #+#             */
/*   Updated: 2023/01/18 17:22:47 by abouabra         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int is_charset(char c,char *charset)
{
	int i;

	i=-1;
	while(charset[++i])
		if(charset[i] == c)
			return 1;
	return 0;
}

static char	**error(char **arr)
{
	int	i;

	i = 0;
	while (arr[i])
	{
		free(arr[i]);
		i++;
	}
	free(arr);
	return (0);
}

static int	c_count(char const *str, char *charset)
{
	int	count;
	int	i;

	count = 0;
	i = 0;
	while (str[i])
	{
		if (is_charset(str[i],charset))
			i++;
		else
		{
			count++;
			while (str[i] && !is_charset(str[i],charset))
				i++;
		}
	}
	return (count);
}

static char	*get_word(char const *s, char *charset, int *index)
{
	int		i;
	int		wdlen;
	char	*str;

	wdlen = 0;
	i = 0;
	while (is_charset(s[(*index)], charset))
		(*index)++;
	i = *index;
	while (s[i] && !is_charset(s[i], charset))
	{
		wdlen++;
		i++;
	}
	str = malloc((wdlen + 1) * (sizeof(char)));
	if (!str)
		return (0);
	i = 0;
	while (s[(*index)] && !is_charset(s[(*index)], charset))
		str[i++] = s[(*index)++];
	str[i] = 0;
	return (str);
}

char	**ft_split(char const *s, char *charset)
{
	int		c_occurence;
	int		i;
	char	**arr;
	int		index;

	if (s == NULL)
		return (0);
	index = 0;
	i = 0;
	c_occurence = c_count(s, charset);
	arr = malloc(sizeof(char *) * (c_occurence + 1));
	if (!arr)
		return (0);
	while (i < c_occurence)
	{
		arr[i] = get_word(s, charset, &index);
		if (!arr)
			return (error(arr));
		i++;
	}
	arr[i] = 0;
	return (arr);
}
