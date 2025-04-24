/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printstr.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: daxferna <daxferna@student.42madrid.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/03/20 17:07:28 by daxferab          #+#    #+#             */
/*   Updated: 2025/04/24 16:42:36 by daxferna         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/ft_printf.h"

int	ft_printstr(char *c)
{
	if (!c)
		return (write(1, "(null)", 6));
	return (write(1, c, ft_strlen(c)));
}
