/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printnbr.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: daxferna <daxferna@student.42madrid.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/20 17:14:04 by daxferab          #+#    #+#             */
/*   Updated: 2025/04/24 16:42:30 by daxferna         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/ft_printf.h"

static int	ft_numlen(int n)
{
	int	i;

	i = 0;
	if (n <= 0)
		++i;
	while (n && ++i)
		n /= 10;
	return (i);
}

int	ft_printnbr(int num)
{
	ft_putnbr_fd(num, 1);
	return (ft_numlen(num));
}
